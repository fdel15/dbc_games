class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.index :address, unique: true
      t.string :city
      t.string :zip_code
      t.string :geo_coordinates
      t.timestamps null: false
    end
  end
end
