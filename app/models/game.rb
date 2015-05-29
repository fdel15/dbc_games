class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :location
end
