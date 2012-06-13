class UsersController < ApplicationController
before_filter :signed_in_user, only: [:edit, :update]

  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
		if @user.save
      		redirect_to(@user, :notice => "Welcome to the Soup Exchange!")
      	else 
      		redirect_to(new_user_path, :notice => @user.errors.full_messages)
		end
  end

  def show
  	@user = User.find(params[:id])
    @soups = @user.soups
  end
  
end
