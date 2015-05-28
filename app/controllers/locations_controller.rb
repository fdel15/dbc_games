class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "Location Created!"
    end
      redirect_to :new_game
  end

  private

  def location_params
    params.require(:location).permit(:address, :city, :zip_code)
  end
end
