class LikesController < ApplicationController

    def index
        redirect_to posts_path
    end

    def add_like
        @like = Like.create(user_id: params[:user_id], post_id: params[:post_id])
        redirect_to posts_path
    end

    def remove_like
        @user = User.find_by(params[:user_id])
        @like = @user.likes.find_by(post_id: params[:post_id])
        @post = Post.find(params[:post_id])
        @like.destroy!
        redirect_to posts_path
    end

    def show
        @user = User.find(params[:user_id])
        @likes = Like.find_by(user_id: @user.id)
    end

    private

    # def already_liked?
    #     Like.where(user_id: params[:user_id], post_id: params[:post_id]).exists?
    # end

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end
end
