class UsersController < ApplicationController

    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all 
    end 

    def new
        @user = User.new
    end 

    def create
        @user = User.create(user_params)
        redirect_to @user
    end 

    def update
        @user.update(user_params)
        redirect_to @user
    end 

    def destroy
        User.destroy(params[:id])
        redirect_to users_path
    end 
    
    private 

    def get_user
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :password)
    end 

end
