class PlacesController < ApplicationController

  def index
    @places = Place.all

    render :template => "places/index"
end
def show
  @places = Place.find_by({"id" => params["id"]})
  @places = Place.where({"place_id" => @place["id"]})
end

def new
end

def create

  @places = Place.new
  @places["name"] = params["name"]
    @places["city"] = params["city"]
    @places["state"] = params["state"]
    @places.save
    redirect_to "/places"
end
end 