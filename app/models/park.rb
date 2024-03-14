class Park < ApplicationRecord

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
