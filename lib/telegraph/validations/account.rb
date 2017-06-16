module Telegraph
  module Account
    CreateAccountSchema = Dry::Validation.Schema do
      required(:short_name) { str? & size?(1..32) }
      optional(:author_name) { str? & size?(0..128) }
      optional(:author_url) { str? & size?(0..512) }
    end

    EditAccountInfoSchema = Dry::Validation.Schema do
      required(:access_token) { str? }
      optional(:short_name) { str? & size?(1..32) }
      optional(:author_name) { str? & size?(0..128) }
      optional(:author_url) { str? & size?(0..512) }
    end

    GetAccountInfoSchema = Dry::Validation.Schema do
      configure do
        def valid_fields?(value)
          (value - Telegraph::Types::Account::FIELDS).empty?
        end
      end

      required(:access_token) { str? }
      optional(:fields) { valid_fields? }
    end

    RevokeAccessTokenSchema = Dry::Validation.Schema do
      required(:access_token) { str? }
    end
  end
end