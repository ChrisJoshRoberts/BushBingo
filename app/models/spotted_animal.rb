class SpottedAnimal < ApplicationRecord
  belongs_to :game_players
  belongs_to :animals
end
