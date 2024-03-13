class ParkAnimalsController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    @park_animals = @park.park_animals
    @game = find_game_for_park(@park)
    @game_animal_spotted = SpottedAnimal.where(game_player_id: current_user.game_player.id)
  end

  def show
    @park_animal = ParkAnimal.find(params[:id])
  end

  private

  def find_game_for_park(park)
    Game.find_by(park_id: park.id)
  end
end
