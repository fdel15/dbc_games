class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :geo_coordinates
      t.timestamps null: false
    end
  end
end
