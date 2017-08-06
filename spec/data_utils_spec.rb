require 'spec_helper'

describe AutoExpreso::DataUtils do
  let(:data_utils) { AutoExpreso::DataUtils }

  describe '#attributes' do
    it 'returns an array of symbols' do
      expect(data_utils.attributes)
      .to match_array [:account_name_id, :account_balance_id, :account_status_id,:account_last_payment_id, :account_last_payment_date_id]
    end
  end

  describe '#form_data' do
    it 'returns an OpenStruct instance' do
      expect(data_utils.form_data).to be_a(OpenStruct)
    end

    it 'contains methods' do
      expect(data_utils.attributes)
      .to match_array [:account_name_id, :account_balance_id, :account_status_id, :account_last_payment_id, :account_last_payment_date_id]
    end

    it 'returns html attributes correctly' do
      expect(data_utils.form_data.login_form_id).to eq('aspnetForm')
      expect(data_utils.form_data.login_form_username_name).to eq('ctl00$ContentPlaceHolder1$Login1$uxUserNameField')
      expect(data_utils.form_data.login_form_password_name).to eq('ctl00$ContentPlaceHolder1$Login1$uxPasswordField')
      expect(data_utils.form_data.account_name_id).to eq('#ctl00_Content_uxLogonAccountName')
      expect(data_utils.form_data.account_balance_id).to eq('#ctl00_Content_uxLogonBalanceAmount')
    end
  end
end
