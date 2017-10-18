class RewardsController < ApplicationController
  def index
    @places = Place.all
  end
end
