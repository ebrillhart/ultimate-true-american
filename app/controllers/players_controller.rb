class PlayersController < ApplicationController
before_action :is_authenticated?
  # def index
  # end

  def create
    # same view as create game view, allows user to add player usernames to game
    player = Player.create player_params
    player.update_columns(game_id: params[:game_id])
    player.update_columns(beers: '0')
    redirect_to "/game/"+ params[:game_id]
  end

  def new
    @player = player.new
  end

  # def edit 
  # end

  # def show
  # end

  def update
      #Code to update "beers drank"

      # session[:player_id] = @player.id
      player = Player.find(params[:id])
      mybeers = player.beers.to_i
      mybeers += 1
      mybeers = mybeers.to_s
      # render json: user
      player.beers = mybeers
      player.save
      redirect_to "/game/"+ session[:game_id].to_s

      # player = player.beers(beers: params[:game_id] =+ 1)
      # redirect_to "/game/"+ params[:game_id]
  end

  def destroy
    # delete a player from current game
    Player.find(params[:id]).delete
    redirect_to "/game/"+ session[:game_id].to_s
  end

  private
  def player_params
    params.require(:player).permit(:username, :alias, :beers, :game_id)
  end
end