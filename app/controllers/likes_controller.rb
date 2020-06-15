class LikesController < ApplicationController
    # def new
    #     @like = Like.new
    # end 

    # def create
    #     @like = Like.create(like_params)
    #     redirect_to posts_path
    # end

    def index
        redirect_to posts_path
    end

    def add_like
        @like = Like.create(user_id: params[:user_id], post_id: params[:post_id])
        redirect_to posts_path
    end

    def delete
        if already_liked?
            @like.destroy
        end
        redirect_to posts_path
    end

    private
    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end

    def already_liked?
        Like.where(user_id: params[:user_id], post_id: params[:post_id]).exists?
    end
end
