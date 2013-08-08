module AutoExpreso
  module DataUtils
    def self.included(base)
      base.extend self
    end

    module_function
    def form_data
      OpenStruct.new({
        login_form_id:                'aspnetForm',
        login_form_username_name:     'ctl00$ContentPlaceHolder1$Login1$uxUserNameField',
        login_form_password_name:     'ctl00$ContentPlaceHolder1$Login1$uxPasswordField',

        account_name_id:              '#ctl00_Content_uxLogonAccountName',
        account_balance_id:           '#ctl00_Content_uxLogonBalanceAmount',
        account_status_id:            '#ctl00_Content_uxLogonAccountStatus',
        account_last_payment_id:      '#ctl00_Content_uxLogonAmountLastPayment',
        account_last_payment_date_id: '#ctl00_Content_uxLogonDateLastPayment',
        account_transaction_table_id: '#ctl00_Content_uxLast20TransactionsGrid'
     })
    end

    def attributes
      %w(name_id balance_id status_id last_payment_id last_payment_date_id).map do |field_name|
        "account_#{field_name}".to_sym
      end
    end

    def save_transactions(tds, transactions)
      transactions << {
        date:       tds[0].text.strip,
        location:   tds[1].text.strip,
        amount:     tds[2].text.strip,
        tag_number: tds[3].text.strip
      }
    end
  end
end
