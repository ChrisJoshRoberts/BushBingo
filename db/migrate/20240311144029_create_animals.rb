class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :points
      t.string :species
      t.text :description
      t.string :sound
      t.string :spoor
      t.string :image

      t.timestamps
    end
  end
end
