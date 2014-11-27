require 'autoexpreso/version'
require 'autoexpreso/data_utils'
require 'mechanize'
require 'awesome_print'
require 'ostruct'

module AutoExpreso
  class Client
    include AutoExpreso::DataUtils

    AE_LOGIN   = 'https://www.autoexpreso.com/Login.aspx'
    AE_ACCOUNT = 'https://www.autoexpreso.com/dynamic/'

    attr_reader :client, :account, :transactions, :account_page

    def initialize(*args)
      @client       = Mechanize.new
      @account      = Hash.new
      @transactions = []
    end

    def login(username, password)
      authenticate(username, password)
      process_request
      ap @account
    end

    def authenticate(username, password)
      @client.get(AE_LOGIN) do |page|
        page.form_with(id: form_data.login_form_id) do |form|
          form[form_data.login_form_username_name] = username
          form[form_data.login_form_password_name] = password
        end.click_button
      end
    end

    def process_request
      process_transactions
      save_account
      table_strip
    end

    def process_transactions
      @account_page = @client.get(AE_ACCOUNT)
    end

    def save_account
      attributes.map do |attribute|
        @account[attribute] = text_strip(form_data.send(attribute))
      end
    end

    def text_strip(field_name)
      @account_page.search(field_name).text.strip
    end

    def table_data
      @account_page.search("#{form_data.account_transaction_table_id} tbody tr")
    end

    def table_strip
      table_data.each do |tr|
        tds = tr.search('td')
        next unless tds.count == 4

        save_transactions(tds, @transactions)
      end
      @account[:transactions] = @transactions
    end
  end
end
