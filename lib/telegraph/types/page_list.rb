module Telegraph
  module Types
    class PageList < Base
      attribute :total_count, Integer
      attribute :pages, Array[Page]
    end
  end
end