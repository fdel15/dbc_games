class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, default: "Texas Holdem"
      t.string :type, default: "Cash"
      t.string :location, default: "63 Wall St."
      t.integer :buyin
      t.datetime :date
      t.timestamps null: false
    end
  end
end
