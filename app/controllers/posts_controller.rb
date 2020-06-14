class PostsController < ApplicationController
    def index
        @posts = Post.all
        # added access to likes
        # @add_like = @posts.each do |post|
        #     post.add_like
        # end
    end

    def new
        @post = Post.new
        @users = User.all
    end

    def create
        @post = Post.create(post_params(:content, :user_id))
        redirect_to posts_path
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params(:content, :user_id))
        @user = User.find(@post.user_id)
        redirect_to user_path(@user)
    end

    def destroy
        @post = Post.find(params[:id])
        @user = User.find(@post.user_id)
        @post.destroy 
        redirect_to user_path(@user)
    end

    private

    def post_params(*args)
        params.require(:post).permit(*args)
    end
end
