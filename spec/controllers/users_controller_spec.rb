require 'spec_helper'

describe UsersController do

  describe "POST 'create'" do
    context "when an e-mail is given" do
      it "returns an 201 code" do
        post 'create', :email => "me@work.com"
        response.status.should == 201
      end

      it "creates a new user" do
        expect {
          post 'create', :email => 'me@work.com'
        }.to change(User, :count).by(1)
      end
    end

    context "when an e-mail isn't given" do
      it "returns a 422 code" do
        post 'create'
        response.status.should == 422
      end
    end
  end
  
  describe "Edition" do
    context "with another e-mail" do
      before do
        @user = User.create!(:email => "me@work.com")
        put 'update', :id => @user.id, :email => "other_me@work.com"
      end
      
      it "edits the user" do
        User.find(@user).email.should == "other_me@work.com"
      end
      
      it "should redirect to index" do
        response.should be_redirect
      end
    end
  end

end
