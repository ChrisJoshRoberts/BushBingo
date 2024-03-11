class CreateSpottedAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :spotted_animals do |t|
      t.references :game_player, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
