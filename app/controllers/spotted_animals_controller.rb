class SpottedAnimalsController < ApplicationController
  def create
    @animal = Animal.find(params[:animal_id])
    @game = Game.find(params[:game_id])
    @game_player = GamePlayer.find_by(game: @game, user: current_user)
    @animal_id = params[:animal_id]
    @spotted_animal = SpottedAnimal.new(animal_id: @animal_id, game_player_id: @game_player.id)

    if @spotted_animal.save
      redirect_to game_path(@game), notice: "Animal was successfully spotted."
    else
      render :new, status: :unprocessable_entity
    end
    update_points
  end

  private

  def spotted_animal_params
    params.require(:spotted_animal).permit(:animal_id)
  end

  def update_points
    @game_player = GamePlayer.find_by(game: @game, user: current_user)
    @animal = Animal.find(params[:animal_id])
    @game_player.points += @animal.points
  end
end
