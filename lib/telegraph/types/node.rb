module Telegraph
  module Types
    class Node
      include Virtus.model
      attribute :tag, String
      attribute :attr, String
      attribute :children, Array[Node]
      attribute :text, String

      def initialize(node)
        if node.is_a?(String)
          @text = node
        else
          super
        end
      end
    end
  end
end