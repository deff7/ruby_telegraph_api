module Telegraph
  module Types
    class NodeElement < Base
      attribute :tag, String
      attribute :attr, String
      attribute :children, Array[Telegraph::Types::Node]
    end
  end
end