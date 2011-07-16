require 'spec_helper'

describe UsersController do

  describe "POST 'create'" do
    context "when an e-mail is given" do
      it "returns an 201 code" do
        post 'create', :email => "me@work.com"
        response.status.should == 201
      end

      it "creates a new user" do
        User.should_receive(:create).with(:email => 'me@work.com')
        post 'create', :email => 'me@work.com'
      end
    end
  end

end
