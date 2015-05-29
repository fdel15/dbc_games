class Location < ActiveRecord::Base
  belongs_to :game

  def address_and_city
    "#{address}, #{city}"
  end
end