class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home 
     if !user_signed_in?
      @movies = Movie.all
      @popular = Movie.popular
     else
      redirect_to movies_path
     end
  end
end
