class SessionsController < ApplicationController

  def new
  	# logs in user
  end

  def create
  # method to log in user
  # calls authentication and defines @user
  user = User.authenticate login_params['email'], login_params['password']
  puts login_params['email']
  puts login_params['password']
    if user
      session[:user_id] = user.id
      redirect_to profile_path
    else 
      redirect_to root_path
    end
end

def destroy
  session[:user_id] = nil
  redirect_to root_path

end
end

private

 def login_params
   params.require(:user).permit(:email, :password, :username)
 end

