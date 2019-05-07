class MoviesController < ApplicationController

    def index 
        if params[:title]
            @movie = Movie.find_by(title: params[:title])
            redirect_to @movie
            # render :show
        else
            @movies = Movie.all
        end
    end 

    def show
        @movie = Movie.find(params[:id])
        # if @movie.valid?
        #     redirect_to @movie
        # else
        #     redirect users_path
        # end 
    end

private 

    def movie_params
        params.require(:movie).permit(:title, :content, :year, :synopsis, :search)
    end 


end
