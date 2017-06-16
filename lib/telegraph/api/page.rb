module Telegraph
  module Page
    def self.create(params)
      return nil unless CreatePageSchema.(params).success?
      response = Telegraph::Core.request('createPage', params)
      if response.dig('result', 'content')
        response['result']['content'] = Types::Page.new(Hashie.symbolize_keys response['result'])
      end
      response
    end

    def self.edit(params)
      return nil unless EditPageSchema.(params).success?
      path = params.delete(:path)
      response = Telegraph::Core.request('editPage/' + path, params)
      if response.dig('result', 'content')
        response['result']['content'] = Types::Page.new(Hashie.symbolize_keys response['result'])
      end
      response
    end

    def self.get(params)
      return nil unless GetPageSchema.(params).success?
      path = params.delete(:path)
      res = Telegraph::Core.request('getPage/' + path, params)
      Types::Page.new(Hashie.symbolize_keys res['result'])
    end
  end
end