class ParkAnimal < ApplicationRecord
  belongs_to :animal
  belongs_to :park
end
