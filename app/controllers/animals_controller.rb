class AnimalsController < ApplicationController
  def index
    @game = current_user.game_players.last.game
    if params[:query].present?
      @animals = Animal.search_by_animal_name(params[:query])
    else
      @animals = Animal.all
    end
  end

  def show
    @game = current_user.game_players.last.game
    @animal = Animal.find(params[:id])
  end
end
