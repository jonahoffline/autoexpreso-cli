require 'autoexpreso/version'
require 'autoexpreso/data_utils'
require 'mechanize'
require 'awesome_print'
require 'ostruct'

module AutoExpreso
  class Client
    include AutoExpreso::DataUtils

    AE_URL = 'https://www.autoexpreso.com/Login.aspx'

    attr_reader :client, :account, :transactions, :account_page

    def initialize(*args)
      @client       = Mechanize.new
      @account      = Hash.new
      @transactions = []
    end

    def login(username, password)
      process_request(username, password)
      ap @account
    end

    def process_request(username, password)
      @client.get(AE_URL) do |page|
        @account_page = page.form_with(id: form_data.login_form_id) do |form|
          form[form_data.login_form_username_name] = username
          form[form_data.login_form_password_name] = password
        end.click_button
      end
      save_account
      table_strip
    end

    def save_account
      attributes.map { |attribute| @account[attribute] = text_strip(form_data.send(attribute)) }
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
