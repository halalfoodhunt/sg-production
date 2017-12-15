class PlacesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    if params[:feature].present? 
    @feature_id = Feature.find_by(name: params[:feature]).id
    @places = Place.joins(:highlights).where(highlights: {feature_id: @feature_id})
    @search_places = Place.ransack(params[:q])
    @search_homies = Homy.ransack(params[:q])
    @search_caterers = Caterer.ransack(params[:q])
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @search_suppliers = Supplier.ransack(params[:q])
    @search_raw_foods = RawFood.ransack(params[:q])
    @search_bakers = Baker.ransack(params[:q])
    else
    @search_places = Place.ransack(params[:q])
    @places = @search_places.result.order("created_at DESC").where(draft: false)
    @search_homies = Homy.ransack(params[:q])
    @homies = @search_homies.result.order("created_at DESC").where(draft: false)
    @search_caterers = Caterer.ransack(params[:q])
    @caterers = @search_caterers.result.order("created_at DESC").where(draft: false)
    @search_food_deliveries = FoodDelivery.ransack(params[:q])
    @food_deliveries = @search_food_deliveries.result.order("created_at DESC").where(draft: false)
    @search_online_retails = OnlineRetail.ransack(params[:q])
    @online_retails = @search_online_retails.result.order("created_at DESC").where(draft: false)
    @search_suppliers = Supplier.ransack(params[:q])
    @suppliers = @search_suppliers.result.order("created_at DESC").where(draft: false)
    @search_raw_foods = RawFood.ransack(params[:q])
    @raw_foods = @search_raw_foods.result.order("created_at DESC").where(draft: false)
    @search_bakers = Baker.ransack(params[:q])
    @bakers = @search_bakers.result.order("created_at DESC").where(draft: false)
    @place_types = PlaceType.all
    @discounts = Discount.all
    end
  end

  # GET /places/1
  # GET /places/1.json
  def show
  end

  # GET /places/new
  def new
    @current_merchant = current_merchant
    @place = Place.new(listing_id: params[:listing_id])
    @place.listing = Listing.find_by id: params["listing_id"]
    @place.opening_hours.build
    @place.menus.build
    @place.verifying_documents.build
    @place.rewards.build
  end

  # GET /places/1/edit
  def edit
    @current_merchant = current_merchant
    @place.opening_hours.build
    @place.menus.build
    @place.verifying_documents.build
    @place.rewards.build
  end

  # POST /places
  # POST /places.json
  def create
    @place = current_merchant.places.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
    @place.feature_ids = params[:place][:feature_ids]
    @place.dining_type_ids = params[:place][:dining_type_ids]
    @place.menu_item_ids = params[:place][:menu_item_ids]
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
      @place.feature_ids = params[:place][:feature_ids]
      @place.dining_type_ids = params[:place][:dining_type_ids]
      @place.menu_item_ids = params[:place][:menu_item_ids]
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:logo, :brand_name, :general_email, :general_outlet_contact_number, :operating_address, :website, :facebook_page, :instagram_handle, :link_to_online_ordering_page, :link_to_online_reservation_page, :question_1, :question_2, :featured_image, :merchant_id, :listing_id, :place_type_id, :location_id, :qualifying_type_id, :latitude, :longitude, :draft, :verified, :on_the_menu, :halal_expiry, :expiry_date, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price, :_destroy], :verifying_documents_attributes => [:id, :document, :_destroy], dining_type_ids: [], feature_ids: [], menu_item_ids: [] )
    end
end
