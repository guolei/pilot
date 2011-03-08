require 'spec_helper'

describe FacebookUser do
  describe "API" do
    it "should read data from config/app_config.yml" do
      FacebookUser::API.authorize_url.should == 'https://graph.facebook.com/oauth/authorize'
    end
  end
end
