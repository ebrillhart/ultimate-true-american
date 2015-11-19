class PlayersController < ApplicationController
  # def index
  # end
  before_action :current_user
  def create
    # same view as create game view, allows user to add player usernames to game
  end

  # def new
  # end

  # def edit 
  # end

  # def show
  # end

  def update
     # when users change their alias on the join game page (game index)
  end

  def destroy
    # delete a player from current game
  end
end
