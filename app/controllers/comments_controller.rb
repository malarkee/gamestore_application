class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_game

    def create
        @comment = @game.comments.create(comment_params)
        @comment.user = current_user
        
        if @comment.save
            flash[:notice] = "Comment posted"
            redirect_to game_url(@game)
        else
            flash[:alert] = "Comment has not been created"
            redirect_to game_url(@game)
        end
    end

    def destroy
        @comment = @game.comments.find(params[:id])
        @comment.destroy
        redirect_to game_url(@game)
    end

    def update
        @comment = @game.comments.find(params[:id])
        respond_to do |format|
            if @comment.update(comment_params)
                format.html{redirect_to game_url(@game), notice: 'Comment updated'}
            else
                format.html{redirect_to game_url(@game), alert: 'Comment not updated'}
            end
        end
    end

    private

    def set_game
        @game = Game.find(params[:game_id])
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end
