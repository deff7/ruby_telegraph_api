require 'spec_helper'

RSpec.describe Telegraph::Account do
  let!(:token) { 'b968da509bb76866c35425099bc0989a5ec3b32997d55286c657e6994bbb' }
  describe '.create' do
    it 'create new account' do
      account = Telegraph::Account.create(short_name: 'Sandbox', author_name: 'Anonymous')
      expect(account).not_to be nil
    end
  end

  describe '.edit' do
    it 'returns Account' do
      account = Telegraph::Account.edit(access_token: token, short_name: 'Sandbox', author_name: 'Anonymous')
      expect(account).not_to be nil
    end
  end

  describe '.info' do
    it 'returns Account info' do
      account = Telegraph::Account.info(access_token: token, fields: %w[short_name page_count])
      expect(account).not_to be nil
    end
  end

  describe '.revoke_token' do
    it 'returns new access_token' do
      access_token = Telegraph::Account.revoke_token(access_token: token)
      expect(access_token).to eq('SANDBOX_TOKEN_REVOKE_DENIED')
    end
  end
end