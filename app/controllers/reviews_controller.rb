class ReviewsController < ApplicationController

    before_filter :authorize, only: [:new, :edit, :update]
    #Add a before_filter to any controller that you want to secure. This will force user's to login before they can see the actions in this controller.

    before_action :get_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.all 
    end 

    def new
        @review = Review.new
    end 

    def create
        @review = Review.create(review_params)
        redirect_to @review
    end 

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
        params.require(:review).permit(:content, :user_id, :movie_id)
    end 

    def get_review
        @review = Review.find(params[:id])
    end 

end
