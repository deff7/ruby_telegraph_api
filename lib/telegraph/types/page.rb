module Telegraph
  module Types
    class Page < Base
      attribute :path, String
      attribute :url, String
      attribute :title, String
      attribute :description, String
      attribute :author_name, String
      attribute :author_url, String
      attribute :image_url, String
      attribute :content, Array[Node]
      attribute :views, Integer
      attribute :can_edit, Axiom::Types::Boolean
    end
  end
end