class UsersController < ApplicationController

  def create
    User.create(:email => params[:email])
    render :nothing => true, :status => 201
  end

end
