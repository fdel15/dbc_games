class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :location
  has_many :games_users
  has_many :users through: :games_users

  validates_presence_of :name, :game_type, :location, :date
end
