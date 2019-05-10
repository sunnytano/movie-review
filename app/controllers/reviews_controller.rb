class ReviewsController < ApplicationController

    # before_filter :authorize, only: [:new, :edit, :update]
    #Add a before_filter to any controller that you want to secure. This will force user's to login before they can see the actions in this controller.
    before_action :authorize, only: [:create, :new, :edit, :show]
    before_action :get_review, only: [:show, :edit, :update, :destroy]
    
    def index
        @reviews = Review.all 
    end 

    def new
        @review = Review.new
    end 

    def show
      
    end 

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.save
        # byebug
        redirect_to @review
    end 
3
    def update
        @review.update(review_params)
        redirect_to @review
    end 

    def destroy
        Review.destroy(params[:id])
        redirect_to reviews_path
    end 

private 

    def review_params
        params.require(:review).permit(:content, :movie_id)
        # params.require(:review).permit!
    end 

    def get_review
        @review = Review.find(params[:id])
    end 

end
