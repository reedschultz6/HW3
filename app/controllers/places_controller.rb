class PlacesController < ApplicationController

  def index
    @places = Place.all

    render :template => "places/index"
end
def show
    @places = Place.find_by(id: params[:id])
    @postss = Post.where(place_id: @place.id)  
  end
end
