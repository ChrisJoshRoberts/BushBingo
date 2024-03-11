class ParkAnimal < ApplicationRecord
  belongs_to :animals
  belongs_to :parks
end
