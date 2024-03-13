class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]

  # GET /games  //do I need to get the games?
  def index
    @games = Game.all
  end

  # GET /games/1
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to game_path(@game), notice: "Game was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :status)
  end
end
