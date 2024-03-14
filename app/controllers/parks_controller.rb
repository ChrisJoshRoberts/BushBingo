class ParksController < ApplicationController
  def index
    if params[:query].present?
      @parks = Park.search_by_name(params[:query])
    else
      @parks = Park.all
    end
  end
end
