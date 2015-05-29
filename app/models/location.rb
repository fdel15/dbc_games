class Location < ActiveRecord::Base
  has_many :games

  def address_and_city
    "#{address}, #{city}"
  end
end