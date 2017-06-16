require 'spec_helper'

RSpec.describe Telegraph::Page do
  let!(:token) { 'b968da509bb76866c35425099bc0989a5ec3b32997d55286c657e6994bbb' }

  describe '.get' do
    it 'returns Page' do
      result = Telegraph::Page.get(path: 'Sample-Page-12-15')
      expect(result).to be_a(Telegraph::Types::Page)
    end
  end

  describe '.create' do
    it 'create page' do
      result = Telegraph::Page.create(access_token: token, author_name: 'Anonymous', title: 'Hello', content: ['World'].to_s, return_content: true)
      expect(result).not_to be nil
    end
  end

  describe '.edit' do
    it 'edit page' do
      result = Telegraph::Page.edit(access_token: token, path: 'Sample-Page-12-15', title: 'Sample Page', author_name: 'Anonymous', content: '[{"tag":"p","children":["Hello,+world!"]}]', return_content: true)
      expect(result).not_to be nil
    end
  end

  describe '.list' do
    it 'fetch page list' do
      result = Telegraph::Page.list(access_token: token, limit: 3)
      expect(result).not_to be nil
    end
  end

  describe '.views' do
    it 'get total views of article' do
      result = Telegraph::Page.views(path: 'Sample-Page-12-15', year: 2016, month: 12)
      expect(result).not_to be nil
    end
  end
end