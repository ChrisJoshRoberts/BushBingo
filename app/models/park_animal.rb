# class ParkAnimal < ApplicationRecord
#   include PgSearch::Model
#   pg_search_scope :search_by_animal_name,
#   associated_against: {
#     animal: [:name]
#   },
#   using: {
#     tsearch: { prefix: true }
#   }
#   belongs_to :animal
#   belongs_to :park
# end

class ParkAnimal < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_animal_name,
                  associated_against: {
                    animal: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
  belongs_to :animal
  belongs_to :park
end
