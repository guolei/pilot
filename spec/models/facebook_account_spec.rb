require 'spec_helper'

describe FacebookAccount do
  describe "API" do
    it "should read data from config/app_config.yml" do
      FacebookAccount::API.authorize_url.should == 'https://graph.facebook.com/oauth/authorize'
    end
  end
end
