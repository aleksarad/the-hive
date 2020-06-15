class LikesController < ApplicationController

    def index
        redirect_to posts_path
    end

    def toggle_like
        @post = Post.find(params[:post_id])
        if current_user.liked?(@post)
            @like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
            @like.destroy
            redirect_back(fallback_location: posts_path)
        else
            @like = Like.create(user_id: current_user.id, post_id: params[:post_id])
            redirect_back(fallback_location: posts_path)
        end
    end

    # def remove_like
    #     @like = current_user.likes.find(params[:post_id])
    #     @like.destroy
    #     redirect_back(fallback_location: posts_path)
    # end

    def show
        @likes = Like.find_by(user_id: current_user.id)
    end

    private

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end
end
