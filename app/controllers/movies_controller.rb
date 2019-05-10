class MoviesController < ApplicationController

    # def index 
    #     if params[:title]
    #         @movie = Movie.find_by(title: params[:title])
    #         redirect_to @movie
    #         # render :show
    #     else
    #         flash[:errors] = "Movie is not in the current movie list."
    #         # redirect_to movies_path
    #     end
    # end 

    def index 
        search_movies if params[:search]
        @movies = Movie.all
        @logged_in = current_user
        # byebug
    end 

    def search_movies
        if params[:search].empty?
            redirect_to movies_path(error: "Please enter a current movie title")
        elsif @movie = Movie.all.find{ |movie| movie.title.downcase.include?(params[:search]) }
            redirect_to @movie
    else
        redirect_to movies_path(error: "No current movie with that title")
    end 
end 

    def show
        @movie = Movie.find(params[:id])
        # if @movie.valid?
        #     redirect_to @movie
        # else
        #     redirect users_path
        # end 
        @logged_in = current_user
        
    end

private 

    def movie_params
        params.require(:movie).permit(:title, :content, :year, :synopsis, :search, :video)
    end 


end
