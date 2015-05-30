class Location < ActiveRecord::Base
  has_many :games
  geocoded_by :address_and_zip_code
  after_validation :geocode

  validates_presence_of :address, :city, :zipcode

  def address_and_city
    "#{address}, #{city}"
  end

  def address_and_zip_code
    "#{address}, #{zipcode}"
  end
end