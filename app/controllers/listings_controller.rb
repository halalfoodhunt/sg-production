class ListingsController < ApplicationController
  before_action :authenticate_merchant!, only: [:index]
  
  def index
    @listings = Listing.all
  end
  
  def listing_params
      params.require(:listing).permit(:name, :icon)
  end
end
