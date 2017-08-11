class LocationsController < ApplicationController
    def index
        @locations = current_user.locations
    end
    
    def new
        @location = Location.new
        @movie_id = params[:movie_id]
    end
    
    def create
        location = Location.new(location_params)
        location.save
        redirect_to movie_locations_path(location.movie)
    end 

    private

    def location_params
        params.require(:location).permit(:zip_code, :city, :movie_id, :user_id)
    end
end
