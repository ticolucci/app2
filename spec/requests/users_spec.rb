require 'spec_helper'

describe "Listing all the users" do

  before do
    User.create :email => 'user@home.com'
    visit '/'
  end

  it "displays the registered user email" do
    page.should have_content "user@home.com"
  end

end