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
      required(:access_token) { str? }
      optional(:fields) { array? }
    end

    RevokeAccessTokenSchema = Dry::Validation.Schema do
      required(:access_token) { str? }
    end
  end
end