class RenameSpeciesColumnInAnimals < ActiveRecord::Migration[7.1]
  def change
    rename_column :animals, :species, :animal_type
  end
end
