class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:nextgame, :show]

  def nextgame
    @game = Game.last
    if @game.nil?
      flash[:danger] = "There are currently no scheduled games. Set one up!"
      redirect_to :new_game
    else
      render :show
    end
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
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
      redirect_to @game
    else
      @game_types = GameType.all
      @locations = Location.all
      render 'new'
    end
  end

  def join
    @game = Game.find(params[:id])
    @game.games_users.create(user_id: current_user.id)
    flash.now[:success] = "You have successfully joined #{@game.name}! See you there :)"
    render :show

  end

  def unjoin
    @game = Game.find(params[:id])
    @game.users.destroy(current_user.id)
    redirect_to @game
  end

  private

  def game_params
    params.require(:game).permit(:name, :game_type_id, :location_id, :date, :description)
  end

end