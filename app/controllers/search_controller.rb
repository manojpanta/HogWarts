class SearchController < ApplicationController
  def index
    house = params[:house]
    students = HogwartFacade.new(house).students
  end
end
