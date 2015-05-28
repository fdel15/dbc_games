class CreateGameTypes < ActiveRecord::Migration
  def change
    create_table :game_types do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.integer :min_num_players, null: false
      t.string :how_to_play_link, null: false
      t.timestamps null: false
    end
  end
end
