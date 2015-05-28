class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.references :game_type, null: false
      t.references :location, null: false
      t.string :description
      t.datetime :date
      t.timestamps null: false
    end
  end
end
