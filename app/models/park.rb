require 'httparty'

class Park < ApplicationRecord

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }

  has_many :games, dependent: :destroy
  has_many :park_animals
  has_many :animals, through: :park_animals


  class MapboxService
    MAPBOX_ACCESS_TOKEN = ENV['MAPBOX_API_KEY']
    def self.geolocate(lat, long)
      url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{long},#{lat}.json?access_token=#{MAPBOX_ACCESS_TOKEN}"
      response = HTTParty.get(url)
      # Parse the response as needed
      response.parsed_response
    end
  end

end
