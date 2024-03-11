class Animal < ApplicationRecord
  has_many :spotted_animals
  has_many :game_players, through: :spotted_animals
  has_many :park_animals
  has_many :parks, through: :park_animals
end
