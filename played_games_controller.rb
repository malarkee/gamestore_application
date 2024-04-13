class PlayedGamesController < ApplicationController
    before_action :authenticate_user!
  
    def new
      @played_game = current_user.played_games.build
    end
  
    def create
      @played_game = current_user.played_games.build(game_params)
      if @played_game.save
        redirect_to user_path(current_user), notice: 'Game added to your list.'
      else
        render :new
      end
    end
  
    private
  
    def game_params
      params.require(:played_game).permit(:game_id)
    end
  end
