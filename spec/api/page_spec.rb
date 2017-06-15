require 'spec_helper'
require 'pp'

RSpec.describe Telegraph::Page do
  it 'works!' do
    result = Telegraph::Page.get('Sample-Page-12-15')
    expect(result).to be_a(Telegraph::Types::Page)
  end
end