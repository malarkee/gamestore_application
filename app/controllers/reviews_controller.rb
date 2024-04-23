class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_game

    def create
        @review = @game.reviews.create(review_params)
        @review.user = current_user
        
        if @review.save
            flash[:notice] = "Review Saved"
            redirect_to game_url(@game)
        else
            flash[:alert] = "Review has not been saved!"
            redirect_to game_url(@game)
        end
    end

    def update
        @review = @game.reviews.find(params[:id])
        respond_to do |format|
            if @review.update(review_params)
                format.html{redirect_to game_url(@game), notice: 'Review updated'}
            else
                format.html{redirect_to game_url(@game), alert: 'Review not updated'}
            end
        end
    end


    private 
    def set_game
        @game = Game.find(params[:game_id])
    end

    def review_params
        params.require(:review).permit(:rating)
    end

end
