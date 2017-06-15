require 'spec_helper'
require 'pp'

RSpec.describe Telegraph::Page do
  it 'works!' do
    result = Telegraph::Page.get('Sample-Page-12-15')
    expect(result).to be_a(Telegraph::Types::Page)
  end

  describe '#create' do
    it 'create page' do
      token = 'b968da509bb76866c35425099bc0989a5ec3b32997d55286c657e6994bbb'
      result = Telegraph::Page.create({access_token: token, author_name: 'Anonymous', title: 'Hello', content: ['World'].to_s})
      expect(result).not_to be nil
      puts result
    end
  end
end