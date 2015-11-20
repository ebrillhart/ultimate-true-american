class GameController < ApplicationController
before_action :is_authenticated?
  def index
    # join game page where players add aliases, random number generator for teams, start game button
    # Game.find(params[:id])
    @games = Game.all
  end

  def create
    # creates the game/adds to database, no view
    @game = Game.create game_params
    @game.update_columns(user_id: session[:user_id])
    puts session[:user_id]
    # redirect_to game_index_path
    redirect_to "/game/"+@game.id.to_s
  end

  def new
    # allows user to input title, description, number of players and player usernames to a form
    @game = Game.new
  end

  # def edit
  # end

  def show
    @game = Game.find(params[:id])
  end

  # def update
  # end

  def destroy
    # allows game to be deleted
    Game.find(params[:id]).delete
    redirect_to profile_path
  end

  private

  def game_params
    params.require(:game).permit(:id, :title, :description, :no_of_players, :created_at)
  end
end
