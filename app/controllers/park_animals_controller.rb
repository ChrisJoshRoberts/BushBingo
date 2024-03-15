class ParkAnimalsController < ApplicationController
  def index
    @game = Game.find(params[:game_id])
    @park = Park.find(params[:park_id])
    @search_results = nil
  end

  def show
    @park_animal = ParkAnimal.find(params[:id])
    @park = Park.find(params[:park_id])
    @game = Game.find(params[:game_id])

    if params[:query].present?
      @search_results = ParkAnimal.search_by_animal_name(params[:query])
    else
      @search_results = @park.park_animals
    end
    @spotted_animal = SpottedAnimal.new
  end
end
