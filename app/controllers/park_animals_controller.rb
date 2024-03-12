class ParkAnimalsController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    @park_animals = @park.park_animals
  end

  def show
    @park_animal = ParkAnimal.find(params[:id])
  end
end
