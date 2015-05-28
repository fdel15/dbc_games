class GameTypesController < ApplicationController

  def new
    @game_type = GameType.new
  end

  def create
  end
end
