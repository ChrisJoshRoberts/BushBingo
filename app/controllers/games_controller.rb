class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]

  def index
    @games = Game.all
  end

  def show
    @park = @game.park   #?
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to new_game_game_player_path(@game), notice: "Game was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:name, :status, :park_id)
    end

    def set_game
      @game = Game.find(params[:id])
    end
end
