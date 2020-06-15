class LikesController < ApplicationController
    before_action :find_post

    # def new
    #     @like = Like.new
    #     @posts = Post.all
    #     @users = User.all
    # end

    def create
        # @like = Like.create(like_params)
        # @post = Post.find_by(id: @like.post_id)
        # @post.add_like

        # if !already_liked?
        #     @posts.likes.create(user_id: @post.user_id)
        # end
        # redirect_to back
        post = Post.find(params[:post_id])
        # current_user.like(post)
        # byebug
        redirect_to posts_path
    end

    def delete
        if already_liked?
            @like.destroy
        end
        redirect_to posts_path
    end


    private

    def find_post
        @post = Post.find(params[:post_id])
    end

    def already_liked?
        Like.where(user_id: params[:user_id], post_id: params[:post_id]).exists?
    end

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end
end
