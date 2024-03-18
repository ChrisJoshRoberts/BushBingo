class Animal < ApplicationRecord
  has_many :spotted_animals
  has_many :game_players, through: :spotted_animals
  has_many :park_animals
  has_many :parks, through: :park_animals

  include PgSearch::Model
  pg_search_scope :search_by_animal_name,
                  associated_against: {
                    animal: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
