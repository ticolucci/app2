require 'spec_helper'

describe "Listing all the users" do

  before do
    Account.create!(:login => "login", :password => 'password', :password_confirmation => 'password')
    User.create :email => 'user@home.com'
    visit '/'
    fill_in 'Login', :with => "login"
    fill_in 'Password', :with => 'password'
    click_on 'Sign in'
  end

  it "displays the registered user email" do
    page.should have_content "user@home.com"
  end

end