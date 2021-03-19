 class PostsController < ApplicationController

    def index
        render json: Post.all.map {|post| PostSerializer.new(post)}
    end

	def create
        post = Post.new(post_params)
        if post.save
	        render json: Post.all.map {|post| PostSerializer.new(post)}
	     end
	end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: Post.all.map {|post| PostSerializer.new(post)}
    end

    def update
        post = Post.find(params[:id])
        post.content = params[:content]
        post.save
        render json: Post.all.map {|post| PostSerializer.new(post)}

    end
	private

    def post_params
	    params.require(:post).permit(:content)
	end

end
