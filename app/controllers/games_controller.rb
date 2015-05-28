class GamesController < ApplicationController

  def nextgame
    @game = Game.last
    if @game.nil?
      flash[:info] = "There are currently no scheduled games. Set one up!"
      redirect_to :new_game
    else
      render :nextgame
    end
  end

  def new
    @game = Game.new
  end

end