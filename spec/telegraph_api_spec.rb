require "spec_helper"

RSpec.describe Telegraph::Api do
  it "has a version number" do
    expect(Telegraph::Api::VERSION).not_to be nil
  end
end
