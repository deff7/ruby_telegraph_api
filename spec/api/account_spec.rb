require 'spec_helper'

RSpec.describe Telegraph::Account do
  describe '.create' do
    it 'create new account' do
      account = Telegraph::Account.create(short_name: 'Sandbox', author_name: 'Anonymous')
      expect(account).not_to be nil
      pp account
    end
  end
end