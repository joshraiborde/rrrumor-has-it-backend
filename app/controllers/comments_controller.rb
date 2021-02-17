class CommentsController < ApplicationController
    def index
        render json: Comment.all
    end

    def create
        byebug
        comment = Comment.new(comment_params)

        if comment.save
            render json:comment
        else 
            byebug
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:content)
    end
end
