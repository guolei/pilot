require 'spec_helper'

describe SnsAccount do
  describe "user" do
    it "should be either business or customer" do
      customer = Factory(:customer, :mail => "customer@test.com")
      business = Factory(:business, :mail => "business@test.com")
      Factory(:facebook_account, :user => customer).user.should == customer
      Factory(:facebook_account, :user => business).user.should == business
    end
  end
end
