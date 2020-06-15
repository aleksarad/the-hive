class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end 

    def create 
        @user = User.create(user_params(:user_name, :name, :password, :location, :bio))
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to '/welcome'
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        @user = User.find(params[:id])
        if current_user.id == @user.id 
            @user 
        else  
            redirect_to user_path(@user)
        end
    end 

    def update
        @user = current_user
        @user.update(user_params(:user_name, :name, :password, :location, :bio))
        redirect_to user_path(current_user)
    end

    #should we let users delete their accounts?
    
    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
