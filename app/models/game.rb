class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :location

  validates_presence_of :name, :game_type, :location, :date
end
