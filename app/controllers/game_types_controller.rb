class GameTypesController < ApplicationController

  def new
    @game_type = GameType.new
  end

  def create
    @game_type = GameType.new(game_type_params)
    if @game_type.save
      flash[:success] = "Game type created!"
      redirect_to :new_game
    else
      render 'new'
    end
  end

  private

  def game_type_params
    params.require(:game_type).permit(:name, :min_num_players, :how_to_play_link)
  end
end
