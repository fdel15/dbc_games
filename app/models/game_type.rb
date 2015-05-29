class GameType < ActiveRecord::Base
  has_many :games

  validates_presence_of :name, :min_num_players, :how_to_play_link
  validates :name, uniqueness: { case_sensitive: false }

end