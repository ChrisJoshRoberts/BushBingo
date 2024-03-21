class ParksController < ApplicationController
  def index
    if params[:query].present?
      @parks = Park.search_by_name(params[:query])
    else
      @parks = Park.all
    end
  end


  def show
    @park = Park.find(params[:id])
    @game = Game.new
    @marker = {
      lng: @park.longitude,
      lat: @park.latitude,
      marker_html: render_to_string(partial: "marker").html_safe
  }.to_json
  end
end
