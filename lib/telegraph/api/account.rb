module Telegraph
  module Account
    def self.create(params)
      return nil unless CreateAccountSchema.(params).success?
      response = Telegraph::Core.request('createAccount', params)
      Types::Account.new(Hashie.symbolize_keys response['result'])
    end

    def self.edit(params)
      return nil unless EditAccountInfoSchema.(params).success?
      response = Telegraph::Core.request('editAccountInfo', params)
      Types::Account.new(Hashie.symbolize_keys response['result'])
    end

    def self.info(params)
      return nil unless GetAccountInfoSchema.(params).success?
      params[:fields] = params[:fields].to_s
      response = Telegraph::Core.request('getAccountInfo', params)
      Types::Account.new(Hashie.symbolize_keys response['result'])
    end

    def self.revoke_token(params)
      return nil unless RevokeAccessTokenSchema.(params).success?
      response = Telegraph::Core.request('revokeAccessToken', params)
      return response['error'] if response['error']
      Types::Account.new(Hashie.symbolize_keys response['result'])
    end
  end
end