module Telegraph
  module Account
    def self.create(params)
      return nil unless CreateAccountSchema.(params).success?
      response = Telegraph::Core.request('createAccount', params)
      Types::Account.new(Hashie.symbolize_keys response['result'])
    end

    def self.edit

    end

    def self.info

    end

    def self.revoke_token

    end
  end
end