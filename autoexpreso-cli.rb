require 'mechanize'
require 'awesome_print'
require "highline/import"

AE_URL = 'https://www.autoexpreso.com/Login.aspx'

username = ask('Username:  ')
password = ask('Password:  ') { |q| q.echo = "*" }

login_form_id = 'aspnetForm'
login_form_username_name = 'ctl00$ContentPlaceHolder1$Login1$uxUserNameField'
login_form_password_name = 'ctl00$ContentPlaceHolder1$Login1$uxPasswordField'

account_name_id = '#ctl00_Content_uxLogonAccountName'
account_balance_id = '#ctl00_Content_uxLogonBalanceAmount'
account_status_id = '#ctl00_Content_uxLogonAccountStatus'
account_last_payment_id = '#ctl00_Content_uxLogonAmountLastPayment'
account_last_payment_date_id = '#ctl00_Content_uxLogonDateLastPayment'
account_transaction_table_id = '#ctl00_Content_uxLast20TransactionsGrid'

client = Mechanize.new

account = Hash.new

client.get(AE_URL) do |page|
  account_page = page.form_with(id: login_form_id) do |f|
    f[login_form_username_name] = username
    f[login_form_password_name] = password
  end.click_button
  
  account[:name] = account_page.search(account_name_id).text.strip
  account[:balance] = account_page.search(account_balance_id).text.strip
  account[:status] = account_page.search(account_status_id).text.strip
  account[:last_payment] = account_page.search(account_last_payment_id).text.strip
  account[:last_payment_date] = account_page.search(account_last_payment_date_id).text.strip
  
  transactions = []
  table = account_page.search("#{account_transaction_table_id} tbody tr")
  table.each do |tr|
    tds = tr.search('td')
    next unless tds.count == 4
    transactions << {
      date: tds[0].text.strip,
      location: tds[1].text.strip,
      amount: tds[2].text.strip,
      tag_number: tds[3].text.strip
    }
  end
  
  account[:transactions] = transactions
end

ap account
