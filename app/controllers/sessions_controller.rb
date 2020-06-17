require 'bcrypt'

class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :welcome]


    def new
        render :new, layout: 'login'
        @errors = flash[:errors]
    end

    def create
        @user = User.find_by(user_name: params[:user_name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to '/posts'
        else
            flash[:error] = "Invalid username or password"
            redirect_to '/login'
        end
    end

    def login
    end

    def welcome
        render :welcome, layout: 'welcome'
    end

    def destroy
      session.clear
      redirect_to welcome_path
    end

    def page_requires_login
    end
end
