class GamesController < ApplicationController

  def nextgame
    @game = Game.last
    if @game.nil?
      flash[:info] = "There are currently no scheduled games. Set one up!"
      render :new
    else
      render :nextgame
    end
  end

  def new
  end

end