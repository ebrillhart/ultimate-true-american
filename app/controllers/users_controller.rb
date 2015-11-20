class UsersController < ApplicationController
  def new
  	# form to sign up
  	@user = User.new
  end

  def create
  	# method to create new user
  	user = User.create user_params
    puts user.errors.inspect
    if user.valid?
      session[:user_id] = user.id
      redirect_to profile_path
    else
      messages = user.errors.map { |k, v| "#{k} #{v}" }
      redirect_to signup_path
    end
  def show
  	# user profile page with option to create or join game and view past games participated in
    @ = 
  end
end
  private
	def user_params
		params.require(:user).permit(:email, :username, :password, :password_confirmation)
	end
end