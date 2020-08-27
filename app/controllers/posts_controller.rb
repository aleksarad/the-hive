class PostsController < ApplicationController
    def index
        @posts = []
        current_user.followees.each do |followee| 
            followee.posts.each do |post|
              @posts << post  
            end
        end
        @posts.sort_by { |post| post[:created_at] }
    end

    def buzzworthy
        @posts = Post.all
    end

    def create
        @post = Post.create(content: params[:content], user_id: current_user.id)
        redirect_back fallback_location: posts_path
    end

    def edit
        @post = Post.find(params[:id])
        if @post.user_id == current_user.id 
            @post
        else  
            redirect_back fallback_location: posts_path
        end
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params(:content, current_user.id))
        redirect_to user_path(current_user)
    end

    def destroy
        @post = Post.find(params[:id])
       if @post.user_id == current_user.id 
            @post.destroy 
       end
        redirect_to user_path(current_user)
    end

    private

    def post_params(*args)
        params.require(:post).permit(*args)
    end
end
