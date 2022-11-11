class CommentsController < ApplicationController

    def index
          if params.has_key?(:artwork_id)
            comments = Comment.comments_for_artwork_id(params[:artwork_id])
            render json: comments
        elsif params.has_key?(:user_id)
            comments = Comment.comments_for_user_id(params[:user_id])
            render json: comments
        else
            comments = Comment.all
            render json: comments
        end
    end



    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end