class AddPhotosToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :photos, :string, array: true, default: []
  end
end
