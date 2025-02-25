class PlacesController < ApplicationController

  def index
    @places = Place.all

    render :template => "places/index"
end
def create
  @place = Place.new(place_params)
  if @place.save
    redirect_to places_path, notice: "Place added successfully!"
  else
    render :new
  end
end

def place_params
  params.require(:place).permit(:name)
end
