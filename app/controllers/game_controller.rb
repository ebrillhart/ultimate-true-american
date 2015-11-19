class GameController < ApplicationController
  def index
    # join game page where players add aliases, random number generator for teams, start game button
    @games = Game.all
  end

  def create
    # creates the game/adds to database, no view
    Game.create game_params
    redirect_to games_path
  end

  def new
    # allows user to input title, description, number of players and player usernames to a form
    @game = Game.new
  end

  # def edit
  # end

  def show
    # shows a dashboard of players with current beer count, beer button, turn button
  end

  # def update
  # end

  def destroy
    # allows game to be deleted
    Game.find(params[:id]).delete
    redirect_to games_path
  end
end
