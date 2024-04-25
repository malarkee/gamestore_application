class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[show index ]
  # GET /games or /games.json
  def index
    @q = Game.ransack(params[:q])
    @games = @q.result(distinct: true)
  end

  # GET /games/1 or /games/1.json
  def show
    @comments = @game.comments.order(created_at: :desc)
  end

  # GET /games/new
  def new
    # redirect to home if user is not an admin
    if not current_user.admin?
      redirect_to(root_path)
    else
      @game = Game.new
    end
  end

  # GET /games/1/edit
  def edit
    # redirect to home if user is not an admin
    if not current_user.admin?
      redirect_to(root_path)
    end
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to game_url(@game), notice: "Game was successfully created." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to game_url(@game), notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy!

    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def add # add to list
    a = PlayedGame.create(user_id: current_user.id, game_id: params[:id])
    if a.game_id != nil
      redirect_back fallback_location: root_path, notice: "Game added!"
    end
  end

  def remove
    played_game = current_user.played_games.find_by(game_id: params[:id])
    if played_game.present?
      played_game.destroy
      redirect_back fallback_location: root_path, notice: "Game removed from your list."
    else
      redirect_back fallback_location: root_path, alert: "Game not found in your list."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:title, :desc, :release_date, :publisher, :developer, :genre, :platform, :age_rating, :image, pictures: [])
    end
end
