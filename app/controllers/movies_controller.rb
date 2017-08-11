require 'pry'
class MoviesController < ApplicationController
    def new
        if user_signed_in?
        @movie = Movie.new
        else
        redirect_to root_path
        end
    end
    
    def show 
        @movie = Movie.find_by(id: params[:id])
    end

    def create
        movie = Movie.create(movie_params)
        redirect_to movies_path
    end
    
    def index
       @movies = current_user.movies
       @popular = Movie.popular
    end

    
    private
 
    def movie_params
        params.require(:movie).permit(:name,:description,locations_attributes: [:zip_code, :city, :user_id],location_ids:[])
    end
end
