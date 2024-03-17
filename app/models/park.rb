class Park < ApplicationRecord

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }

  has_many :games
  has_many :park_animals
  has_many :animals, through: :park_animals
end
