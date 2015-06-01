class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :location
  has_many :games_users
  has_many :users, through: :games_users

  validates_presence_of :name, :game_type, :location, :date

  def formatted_date
    date.strftime('%a %b %d %Y')
  end

  def formatted_time
    date.strftime("%I:%M %p")
  end
end
