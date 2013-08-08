require 'spec_helper'

describe AutoExpreso::Client do
  let(:auto) { AutoExpreso::Client.new }

  describe '#client' do
    it 'returns a new Mechanize instance' do
      expect(auto.client).to be_kind_of(Mechanize)
    end
  end

  describe '#account' do
    it 'returns a Hash' do
      expect(auto.account).to be_a(Hash)
    end
  end

  describe '#transactions' do
    it 'returns an array' do
      expect(auto.transactions).to be_a(Array)
    end
  end
end
