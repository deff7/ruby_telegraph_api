module Telegraph
  module Types
    class Account < Base
      attribute :short_name, String
      attribute :author_name, String
      attribute :author_url, String
      attribute :access_token, String
      attribute :auth_url, String
      attribute :page_count, Integer
    end
  end
end