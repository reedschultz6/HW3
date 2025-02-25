class PlacesController < ApplicationController

  def index
    @places = Place.all

    render :template => "places/index"
end
def show
    @place = Place.find(params[:id])
    @posts = @place.posts
  end
end
