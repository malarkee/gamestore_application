class AdminController < ApplicationController
  def index
  end

  def games
    @games = Game.all
  end

  def reviews
  end

  def users
  end

  def show_game
  end
end
