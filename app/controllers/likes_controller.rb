class LikesController < ApplicationController
    def new
        @like = Like.new
        @posts = Post.all
        @users = User.all
    end

    def create
        @like = Like.create(like_params)
        # @post = Post.find_by(id: @like.post_id)
        # @post.add_like
        redirect_to posts_path
    end


    private

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end
end
