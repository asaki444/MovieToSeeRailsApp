class MoviesController < ApplicationController
    def new
     @movie = Movie.new
    end

    private
 
    def movie_params
        params.require(:movie).permit(:name, :description, :locations_attributes)
    end
end
