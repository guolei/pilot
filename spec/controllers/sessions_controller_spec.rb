require 'spec_helper'

describe SessionsController do
  describe "new" do
    it "should redirect to facebook" do
      get :new, :sn => "123123123"
      response.should redirect_to("https://graph.facebook.com/oauth/authorize?client_id=158986864156387&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fsessions%2F123123123%2Fauth&scope=offline_access%2Cpublish_stream")
    end
  end
end
