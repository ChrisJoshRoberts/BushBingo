class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]

  def index
    @accepted_games = current_user.game_players.joins(:game).where(game_players: { status: "accepted" }).select("games.*")
    @pending_games = current_user.game_players.joins(:game).where(game_players: { status: "pending" }).select("games.*")
  end

  def show
    @park = @game.park
    @user = current_user
    @game_player = GamePlayer.find_by(game: @game, user: @user)
    @user_gameplayer = current_user.game_players.where(game: @game.id).first
  end

  def new
    @game = Game.new
    @parks = Park.all
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

  def game_params
    params.require(:game).permit(:name, :status, :park_id)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
