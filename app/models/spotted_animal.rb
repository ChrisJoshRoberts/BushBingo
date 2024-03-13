class SpottedAnimal < ApplicationRecord
  belongs_to :game_player
  belongs_to :animal
end
