class AddLatitudeAndLongitudeToLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :geo_coordinates
    add_column :locations, :longitude, :float
    add_column :locations, :latitude, :float
  end
end
