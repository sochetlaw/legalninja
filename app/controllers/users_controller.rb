class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.first + " " + @user.last
  end

  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
end
