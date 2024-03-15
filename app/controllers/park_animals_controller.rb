class ParkAnimalsController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    @park_animals = @park.park_animals
    @game = Game.find(params[:game_id])
    @spotted_animal = SpottedAnimal.new()
  end

  def show
    @park_animal = ParkAnimal.find(params[:id])
    @park = Park.find(params[:park_id])
    @game = Game.find(params[:game_id])
  end
end
