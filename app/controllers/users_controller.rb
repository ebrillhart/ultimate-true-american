class UsersController < ApplicationController
  def new
  	# form to sign up
  	@user = User.new
  end

  def create
  	# method to create new user
  	User.create user_params
  end

  def show
  	# user profile page with option to create or join game and view past games participated in
  end
  private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
