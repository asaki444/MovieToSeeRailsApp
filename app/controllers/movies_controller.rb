class MoviesController < ApplicationController
    def new
        if user_signed_in?
        @movie = Movie.new
        else
        redirect_to root_path
        end
    end
    
    def index
      @movies = Movie.All
    end

    private
 
    def movie_params
        params.require(:movie).permit(:name, :description, :locations_attributes)
    end
end
