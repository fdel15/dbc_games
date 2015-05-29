class Location < ActiveRecord::Base
  has_many :games

  validates_presence_of :address, :city, :zip_code

  def address_and_city
    "#{address}, #{city}"
  end
end