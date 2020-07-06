require 'autoexpreso/version'
require 'autoexpreso/data_utils'
require 'autoexpreso/cache'
require 'faraday'
require 'typhoeus'
require 'typhoeus/adapters/faraday'
require 'awesome_print'
require 'ostruct'
require 'json'

module AutoExpreso
  class Client
    include AutoExpreso::DataUtils

    BASE_URL = 'https://tp-api.autoexpreso.com'
    USER_AGENT = "AutoExpreso-Rubygem/#{AutoExpreso::VERSION}"

    ENDPOINTS = {
      login: '/api/Auth/Login',
      account_summary: '/api/Account/GetAccountSummary'
    }

    attr_reader :account
    attr_accessor :jwt_header

    def initialize(*args)
      @account = Hash.new
    end

    def login(email, password)
      authenticate(email, password)
      account_summary
    end

    def account_details(json: false)
      if json
        puts JSON.pretty_generate(account)
      else
        ap account
      end
    end

    protected

      def authorization_header
        "Bearer #{jwt_header}"
      end

      def default_connection(debug = false)
        Faraday.new(url: BASE_URL) do |conn|
          conn.adapter :typhoeus
          conn.headers[:user_agent] = USER_AGENT
          conn.headers[:content_type] = 'application/json'
          conn.headers['Authorization'] = authorization_header if @jwt_header
          conn.response :logger if debug
        end
      end

      def authenticate(email, password)
        payload = { email: email, password: password }

        response = default_connection.post do |req|
                     req.url(ENDPOINTS[:login])
                     req.body = JSON.generate(payload)
                   end

        if response.success?
          @response_body = JSON.parse(response.body, object_class: OpenStruct)
          @jwt_header = @response_body.accessToken
        end
      end

      def account_summary
        response = default_connection.get do |req|
                     req.url(ENDPOINTS[:account_summary])
                   end

        if response.success?
          @response_body = JSON.parse(response.body)
          @account = @response_body
        end
      end
  end
end

Typhoeus::Config.cache = AutoExpreso::Cache.new
