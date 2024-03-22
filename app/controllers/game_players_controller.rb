class GamePlayersController < ApplicationController
  def index
    @game_players = GamePlayer.where(user_id: current_user.id)
  end

  def show
    @game_player = GamePlayer.find(params[:id])
    @game = Game.find(params[:game_id])
  end

  def new
    @game_player = GamePlayer.new
    @game = Game.find(params[:game_id])
    @current_user_game_player = GamePlayer.find_by(game: @game, user: current_user)
    if params[:query].present?
      @users = User.search_by_name(params[:query])
    else
      @users = User.all
    end
  end

  def create
    @game_player = GamePlayer.new(game_player_params)

    if @game_player.save
      redirect_to edit_game_game_player_path(@game_player.game, @game_player) if @game_player.user_id == current_user.id
    else
      redirect_to new_game_game_player_path(@game_player.game), status: :unprocessable_entity
    end
  end

  def edit
    @game_player = GamePlayer.find(params[:id])
    @game = Game.find(params[:game_id])
    @images = [
      { url: 'elephant_avatar.png' },
      { url: 'giraffe_avatar.png' },
      { url: 'hippo_avatar.png' },
      { url: 'lion_avatar.png' },
      { url: 'monkey_avatar.png' },
      { url: 'zebra_avatar.png' }
    ]
    @game_player_winning = current_user.game_players.where(status: "won").first
    unless @game_player_winning.nil?
      status = @game_player_winning.status == "won"
    end
    if status
      @images << {url: 'pango_logo.png'}
    end
  end

  def update
    @game = Game.find(params[:game_id])
    @game_player = GamePlayer.find(params[:id])

    @game_player.update(avatar: params[:game_player][:avatar])
    redirect_to game_path(@game)
  end

  def destroy
    @game_player = GamePlayer.find(params[:id])
    @game_player.destroy
    redirect_to game_game_players_path
  end

  def accept_game
    game = Game.find(params[:id])
    @game_player = GamePlayer.find_by(game: game, user: current_user)

    if @game_player.nil?
      redirect_to games_path, alert: 'Game player not found.'
      return
    end

    @game_player.update(status: "accepted")

    if @game_player.save
      redirect_to games_path, notice: 'Game player accepted successfully.'
    else
      # Handle save errors, if any
      redirect_to games_path, alert: 'Error accepting game player.'
    end
  end


  def decline_game
    game_player = GamePlayer.find_by(game_id: params[:id], user_id: current_user)
    game_player.update(status: "declined")
    game_player.save
    redirect_to games_path, notice: 'Game rejected successfully.'

  end

  # def decline
  #   @game_player = GamePlayer.find(params[:id])
  #   @game_player.destroy
  #   redirect_to game_path(@game_player.game), notice: "Game invitation declined."
  #   # redirect_to game_game_players_path
  # end

  private

  def game_player_params
    params.require(:game_player).permit(:user_id, :game_id, :status, :points)
  end

  def won_a_game

  end

end
