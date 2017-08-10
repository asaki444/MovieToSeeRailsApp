class MoviesController < ApplicationController
    def new
        if user_signed_in?
        @movie = Movie.new
        else
        redirect_to root_path
        end
    end
    
    def home
     if user_signed_in?
      @movies = Movie.all
     else
      redirect_to 'users/show'
     end
    end

    private
 
    def movie_params
        params.require(:movie).permit(:name, :description, :locations_attributes)
    end
end
