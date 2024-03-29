class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]

  def index
    @games = Game.all
    unless current_user.game_players.last.nil?
      @game = current_user.game_players.last.game
      @winner = @game.game_players.order(points: :desc).first
    end
    @my_game_players = current_user.game_players
    @pending_game_players = current_user.game_players.where(status: "pending")
    @accepted_game_players = current_user.game_players.where(status: ["accepted", "won"])
  end



  def show
    @game = Game.find(params[:id])
    @park = @game.park
    @user = current_user
    @game_player = GamePlayer.find_by(game: @game, user: @user)
    @game_players = @game.game_players.order(points: :desc)
    @winner = @game_players.first

  end

  def new
    @game = Game.new
    @parks = Park.all
  end

  def create
    @game = Game.new(game_params)
    @game.status = "started"
    @park = Park.find(params[:park_id])
    @game.status = "started"
    @game.park = @park
    if @game.save
      GamePlayer.create(user: current_user, game: @game, status: "accepted", points: 0)
      redirect_to new_game_game_player_path(@game), notice: "Game was successfully created."
    else
      redirect_to park_path(@park), status: :unprocessable_entity
    end
  end

  def update
    @game = Game.find(params[:id])
    @game.update(status: "ended")
    @winner = @game.game_players.order(points: :desc).first
    @winner.update(status: "won")
    redirect_to game_path(@game)
  end

  private

  def game_params
    params.require(:game).permit(:name)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
