class SearchController < ApplicationController
  def index
    house = params[:house]
    render locals: {facade: HogwartFacade.new(house)}
  end
end
