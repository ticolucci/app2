require 'spec_helper'

describe "Editing an user" do

  before do
    Account.create!(:login => "login", :password => 'password', :password_confirmation => 'password')
    @user = User.create :email => 'user@home.com'
    visit '/'
    fill_in 'Login', :with => "login"
    fill_in 'Password', :with => 'password'
    click_on 'Sign in'
    click_link "user@home.com"
  end

  it "displays the field for email edition" do
    page.should have_selector("input[type=email]")
  end

end