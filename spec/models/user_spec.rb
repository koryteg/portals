require 'spec_helper'

describe User do
  before(:each) do
  	@user = User.new
  	@user.email = "example@me.com"
  	@user.password = "hellomand!!!"
  end
  it "should be valid" do
  	@user.should be_valid
  end
end
