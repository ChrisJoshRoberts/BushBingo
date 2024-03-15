class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }


  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

        has_many :game_players
        has_many :games, through: :game_players

        has_one_attached :photo
end
