class CreateGamePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :game_players do |t|
      t.integer :points
      t.string :status
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
