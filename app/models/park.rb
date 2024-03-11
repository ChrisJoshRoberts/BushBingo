class Park < ApplicationRecord
  has_many :games
  has_many :park_animals
  has_many :animals, through: :park_animals
end
