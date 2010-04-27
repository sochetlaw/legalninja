class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.first + " " + @user.last
  end

  def new
    @title = "Sign up"
  end

end
