class PlacesController < ApplicationController
  def index
    @places = Place.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude.to_s('F')
      marker.lng place.longitude.to_s('F')
      marker.infowindow place.name
    end
  end
end
