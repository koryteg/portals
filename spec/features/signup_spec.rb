require "spec_helper"
# this is a request spec for signing up as a content creator

describe "should sign up" do
	it "creates a new user with role of owner" do
		visit signup_path
			fill_in 'user_email', with: 'test@gmail.com'
			fill_in 'user_password', with: 'hello1234'
			click_button 'signup'
		page.should have_content('signup success')
	end
	it "but it fails to have password" do
		visit signup_path
		fill_in 'user_email', with: 'test@google.com'
		click_button 'signup'
		page.should have_content('bad password')
	end
end