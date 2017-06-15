module Telegraph
  module Page
    def create

    end

    def edit

    end

    def self.get(path, return_content: true)
      res = Telegraph::Core.request('getPage/' + path, {return_content: return_content}).body
      Types::Page.new(Hashie.symbolize_keys res['result'])
    end
  end
end