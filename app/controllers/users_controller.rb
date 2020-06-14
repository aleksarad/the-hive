class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end 

    def create 
        @user = User.create(user_params(:user_name, :name, :password, :location))
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find(params[:id])
    end 

    def update
        @user = User.find(params[:id])
        @user.update(user_params(:user_name, :name, :password, :location))
        redirect_to user_path(@user)
    end

    #should we let users delete their accounts?
    
    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
