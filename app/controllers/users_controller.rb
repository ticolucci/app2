class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    user = User.new(:email => params[:email])
    if user.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 422
    end
  end

end
