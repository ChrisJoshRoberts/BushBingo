class GamePlayer < ApplicationRecord
  has_many :spotted_animals
  has_many :animals, through: :spotted_animals
  belongs_to :user
  belongs_to :game
end
