class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :status
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
