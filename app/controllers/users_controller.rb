class UsersController < ApplicationController

    before_action :authorize, only: [:edit]
    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all 
    end 

    def new
        @user = User.new
    end 

    def show 
        # byebug
        # @user = current_user
        @logged_in = current_user
    end 

    def edit
        @logged_in = current_user
    end

    def create
        @user = User.create(user_params)
        @created_user = @user
        # byebug
        redirect_to @user

        # if @user.valid?
        #     log_in_user(@user.id)
        #     redirect_to users_path
        # else 
        #     @errors = @user.errors.full_messages
        #     render :new
        # end 
        # if @user.valid?
        #     session[:user_id] = user.id
        #     redirect_to users_path #notice: "Account created successfully"
        # else
        #     #flash[:error] = 'Invalid Login!'
        #     redirect_to new_user_path
        # end 
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
        # byebug
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
    end 

end
