module Telegraph
  module Page
    def self.create(params)
      res = Telegraph::Core.request('createPage', params)
    end

    def edit

    end

    def self.get(path, return_content: true)
      res = Telegraph::Core.request('getPage/' + path, {return_content: return_content})
      Types::Page.new(Hashie.symbolize_keys res['result'])
    end
  end
end