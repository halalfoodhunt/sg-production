class RawFoodsController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_raw_food, only: [:show, :edit, :update, :destroy]

  # GET /raw_foods
  # GET /raw_foods.json
  def index
    @raw_foods = RawFood.all
  end

  # GET /raw_foods/1
  # GET /raw_foods/1.json
  def show
  end

  # GET /raw_foods/new
  def new
    @current_merchant = current_merchant
    @raw_food = RawFood.new
    @raw_food.listing = Listing.find_by id: params["listing_id"]
    @raw_food.opening_hours.build
    @raw_food.rewards.build
    @raw_food.menus.build
    @raw_food.verifying_documents.build
  end

  # GET /raw_foods/1/edit
  def edit
  end

  # POST /raw_foods
  # POST /raw_foods.json
  def create
    @raw_food = current_merchant.raw_foods.new(raw_food_params)

    respond_to do |format|
      if @raw_food.save
        format.html { redirect_to @raw_food, notice: 'Raw food was successfully created.' }
        format.json { render :show, status: :created, location: @raw_food }
      else
        format.html { render :new }
        format.json { render json: @raw_food.errors, status: :unprocessable_entity }
      end
    end
    @raw_food.ordering_method_ids = params[:raw_food][:ordering_method_ids]
    @raw_food.delivery_location_ids = params[:raw_food][:delivery_location_ids]
    @raw_food.online_retail_service_type_ids = params[:raw_food][:online_retail_service_type_ids]
    @raw_food.raw_food_product_category_ids = params[:raw_food][:raw_food_product_category_ids]
  end

  # PATCH/PUT /raw_foods/1
  # PATCH/PUT /raw_foods/1.json
  def update
    respond_to do |format|
      if @raw_food.update(raw_food_params)
        format.html { redirect_to @raw_food, notice: 'Raw food was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_food }
      else
        format.html { render :edit }
        format.json { render json: @raw_food.errors, status: :unprocessable_entity }
      end
    end
    @raw_food.opening_hours.build
    @raw_food.rewards.build
    @raw_food.menus.build
    @raw_food.verifying_documents.build
    @raw_food.ordering_method_ids = params[:raw_food][:ordering_method_ids]
    @raw_food.delivery_location_ids = params[:raw_food][:delivery_location_ids]
    @raw_food.online_retail_service_type_ids = params[:raw_food][:online_retail_service_type_ids]
    @raw_food.raw_food_product_category_ids = params[:raw_food][:raw_food_product_category_ids]
  end

  # DELETE /raw_foods/1
  # DELETE /raw_foods/1.json
  def destroy
    @raw_food.destroy
    respond_to do |format|
      format.html { redirect_to raw_foods_url, notice: 'Raw food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_food
      @raw_food = RawFood.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_food_params
      params.require(:raw_food).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :self_collection_address, :question_1, :expiry_date, :halal_expiry, :draft, :verified, :merchant_id, :listing_id, :product_qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], ordering_method_ids: [], delivery_location_ids: [], raw_food_product_category_ids: [], online_retail_service_type_ids: [])
    end
end
