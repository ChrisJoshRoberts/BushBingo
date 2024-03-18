class Game < ApplicationRecord
  has_many :game_players, dependent: :destroy
  has_many :users, through: :game_players
  belongs_to :park
end
