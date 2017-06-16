module Telegraph
  module Types
    class Account < Base
      attribute :short_name, String
      attribute :author_name, String
      attribute :author_url, String
      attribute :access_token, String
      attribute :auth_url, String
      attribute :page_count, Integer

      SHORT_NAME = 'short_name'
      AUTHOR_NAME = 'author_name'
      AUTHOR_URL = 'author_url'
      AUTH_URL = 'auth_url'
      PAGE_COUNT = 'page_count'

      FIELDS = [SHORT_NAME, AUTHOR_NAME, AUTHOR_URL, AUTH_URL, PAGE_COUNT]
    end
  end
end