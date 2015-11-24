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
  end
  def show
  	# user profile page with option to create or join game and view past games participated in
  # make a call to the players db where the current_user username = players.username
  # save as an array
 
  @players = Player.where(username: @current_user.username)
  games = []

  @players.each do |thing|
    games.push(thing.game_id)
  end

  @current_games = Game.find(games)
    @players = Player.where(username: @current_user.username)

  end
  private
	def user_params
		params.require(:user).permit(:email, :username, :password, :password_confirmation)
	end
end