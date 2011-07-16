require 'spec_helper'

describe "Creating an user" do

  before do
    Account.create!(:login => "login", :password => 'password', :password_confirmation => 'password')
    visit '/'
    fill_in 'Login', :with => "login"
    fill_in 'Password', :with => 'password'
    click_on 'Sign in'
    click_link "New User"
  end

  it "displays the field for email edition" do
    page.should have_selector("input[type=email]")
  end

end