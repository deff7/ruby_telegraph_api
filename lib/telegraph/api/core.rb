module Telegraph
  module Core
    def self.request(method, params = {})
      conn = Faraday.new(
          :url => 'https://api.telegra.ph',
          request: { params_encoder: Faraday::FlatParamsEncoder }
      )
      conn.response :json

      conn.get('/' + method) do |request|
        request.params.merge!(params)
      end
    end
  end
end