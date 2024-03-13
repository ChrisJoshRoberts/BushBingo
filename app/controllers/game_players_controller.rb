class GamePlayersController < ApplicationController
  def index
    @game_players = GamePlayer.where(user_id: current_user.id)
  end

  def new
    @game_player = GamePlayer.new
    @users = User.all
    @game = Game.find(params[:game_id])
  end

  def create
    @game_player = GamePlayer.new(game_player_params)
    if @game_player.save
      redirect_to game_path(@game_player.game) if @game_player.user_id == current_user.id
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @game_player = GamePlayer.find(params[:id])
    @game_player.status = "accepted"
    @game_player.save
    redirect_to game_game_players_path
  end

  def destroy
    @game_player = GamePlayer.find(params[:id])
    @game_player.destroy
    redirect_to game_game_players_path
  end

  private

  def game_player_params
    params.require(:game_player).permit(:user_id, :game_id, :status, :points)
  end
end
