class AddDetailsToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :diet, :string
    add_column :animals, :lifespan, :string
    add_column :animals, :conservation_status, :string
    add_column :animals, :behaviour, :text
    add_column :animals, :known_habitat, :string
  end
end
