class AddAvatarToGamePlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :game_players, :avatar, :string
  end
end
