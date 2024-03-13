class SpottedAnimalsController < ApplicationController
  def create
    raise
    @animal = Animal.find(params[:animal_id])
    @game = Game.find(params[:game_id])
    @spotted_animal = SpottedAnimal.new(spotted_animal_params)
  end

  private

  def spotted_animal_params
    params.require(:spotted_animal).permit(:animal_id, :game_player_id)
  end
end
