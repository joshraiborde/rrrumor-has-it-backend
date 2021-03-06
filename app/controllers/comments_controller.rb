class CommentsController < ApplicationController

    def index
        render json: Comment.all
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            post = Post.find(params[:post_id])
            render json:PostSerializer.new(post)

        end
    end

    private
    def comment_params
        params.require(:comment).permit(:content, :post_id)
    end
end
