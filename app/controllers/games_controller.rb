class GamesController < ApplicationController

  def nextgame
    @game = Game.last
    if @game.nil?
      flash[:alert] = "There are currently no scheduled games. Set one up!"
      redirect_to :new_game
    else
      redirect_to @game
    end
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @location = @game.location
    @game_type = @game.game_type

  end

  def new
    @game = Game.new()
    @locations = Location.all
    @game_types = GameType.all
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:success] = "Game created!"
      redirect_to :games
    else
      @game_types = GameType.all
      @locations = Location.all
      render 'new'
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :game_type_id, :location_id, :date, :description)
  end

end