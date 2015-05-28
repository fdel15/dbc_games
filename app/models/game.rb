class Game < ActiveRecord::Base
  has_many :game_types
  has_many :locations
end
