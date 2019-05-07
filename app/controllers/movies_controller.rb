class MoviesController < ApplicationController

    def index 
        @movies = Movie.all
    end 

    def show
        @movie = Movie.find(params[:id])
        if @movie.valid?
            redirect_to @movie
        else
            redirect users_path
        end 
        
    end


end
