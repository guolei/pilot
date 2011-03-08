require 'spec_helper'

describe CardsController do
  render_views

  before do
    @user = Factory(:user)
    @card = Factory(:card, :sn => "123456789", :user => @user)
  end

  describe "show" do
    it "should generate record for the first time" do
      get :show, :id => "111111111"
      Card.find_by_sn("111111111").should be_present
      response.should be_success
    end

    it "should redirect to user's portal if exist" do
      get :show, :id => "123456789"
      response.should be_redirect
    end
  end
end
