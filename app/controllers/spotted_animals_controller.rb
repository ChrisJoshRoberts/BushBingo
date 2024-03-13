class SpottedAnimalsController < ApplicationController
  def create
    raise
    @animal = Animal.find(params[:animal_id])
    @game = Game.find(params[:game_id])
    @spotted_animal = SpottedAnimal.new(spotted_animal_params)
    @game_player = GamePlayer.where(user_id: current_user.id).first
  end

  private

  def spotted_animal_params
    params.require(:spotted_animal).permit(:animal_id, :game_player_id)
  end
end
