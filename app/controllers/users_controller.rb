class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new
    user.username = params[:username]
    user.email = params[:email]
    user.password = params[:password]
    user.banana = 20
    if user.save 
      redirect_to '/login'
    else
      redirect_to '/users/new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
