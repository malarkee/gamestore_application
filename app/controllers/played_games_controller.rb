class PlayedGamesController < ApplicationController
  before_action :set_played_game, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ index ]

  # GET u/:username/list
  def index
  end

  # PATCH/PUT /played_games/1 or /played_games/1.json
  def update
    respond_to do |format|
      if @played_game.update(played_game_params)
        format.html { redirect_to played_game_url(@played_game), notice: "Played game was successfully updated." }
        format.json { render :show, status: :ok, location: @played_game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @played_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /played_games/1 or /played_games/1.json
  def destroy
    @played_game.destroy!

    respond_to do |format|
      format.html { redirect_to played_games_url, notice: "Removed from list." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_played_game
      @played_game = PlayedGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def played_game_params
      params.require(:played_game).permit(:user_id, :game_id)
    end

    # Determine whose list this is
    def set_user
      @user = User.find_by_username(params[:username])
    end
end
