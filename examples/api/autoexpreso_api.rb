require 'sinatra/base'
require 'sinatra/json'
require 'autoexpreso'

module AutoExpreso
  class API < Sinatra::Base

    before do
      content_type :json
    end

    post '/account_details' do
      request.body.rewind
      data = JSON.parse(request.body.read)

      ae = AutoExpreso::Client.new
      ae.login(data['email'], data['password'])

      json ae.account_details
    end
  end

end
