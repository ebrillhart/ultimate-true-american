class SessionsController < ApplicationController
  def new
  	# logs in user
  end

  def create
  	# method to log in user
    # calls authentication and defines @user
    @user = User.authenticate user_params[:email], user_params[:password]

    if @user
      # logs user in
      session[:user_id] = @user.id
      # flash[:success] = "User logged in!!"
      redirect_to root_path
    else
     # asks user to sign in
     # flash[:danger] = "Credentials Invalid!!"
      redirect_to login_path
    end
      # also sessions for having the current game option?
  end

  def destroy
  	# log out user
    session[:user_id] = nil
    redirect_to root_path
  end
end


private

# defines private user_params
def user_params
  params.require(:user).permit(:email, :password)
end
end
