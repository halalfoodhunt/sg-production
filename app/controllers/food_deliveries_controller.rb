class FoodDeliveriesController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_food_delivery, only: [:show, :edit, :update, :destroy]

  # GET /food_deliveries
  # GET /food_deliveries.json
  def index
    @food_deliveries = FoodDelivery.all
  end

  # GET /food_deliveries/1
  # GET /food_deliveries/1.json
  def show
  end

  # GET /food_deliveries/new
  def new
    @current_merchant = current_merchant
    @food_delivery = FoodDelivery.new
    @food_delivery.listing = Listing.find_by id: params["listing_id"]
    @food_delivery.opening_hours.build
    @food_delivery.rewards.build
    @food_delivery.menus.build
    @food_delivery.verifying_documents.build
  end

  # GET /food_deliveries/1/edit
  def edit
  end

  # POST /food_deliveries
  # POST /food_deliveries.json
  def create
    @food_delivery = current_merchant.food_deliveries.new(food_delivery_params)

    respond_to do |format|
      if @food_delivery.save
        format.html { redirect_to @food_delivery, notice: 'Food delivery was successfully created.' }
        format.json { render :show, status: :created, location: @food_delivery }
      else
        format.html { render :new }
        format.json { render json: @food_delivery.errors, status: :unprocessable_entity }
      end
    end
    @food_delivery.delivery_location_ids = params[:food_delivery][:delivery_location_ids]
    @food_delivery.delivery_service_type_ids = params[:food_delivery][:delivery_service_type_ids]
    @food_delivery.menu_item_ids = params[:food_delivery][:menu_item_ids]
  end

  # PATCH/PUT /food_deliveries/1
  # PATCH/PUT /food_deliveries/1.json
  def update
    respond_to do |format|
      if @food_delivery.update(food_delivery_params)
        format.html { redirect_to @food_delivery, notice: 'Food delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_delivery }
      else
        format.html { render :edit }
        format.json { render json: @food_delivery.errors, status: :unprocessable_entity }
      end
    end
    @food_delivery.opening_hours.build
    @food_delivery.rewards.build
    @food_delivery.menus.build
    @food_delivery.verifying_documents.build
    @food_delivery.delivery_location_ids = params[:food_delivery][:delivery_location_ids]
    @food_delivery.delivery_service_type_ids = params[:food_delivery][:delivery_service_type_ids]
    @food_delivery.menu_item_ids = params[:food_delivery][:menu_item_ids]
  end

  # DELETE /food_deliveries/1
  # DELETE /food_deliveries/1.json
  def destroy
    @food_delivery.destroy
    respond_to do |format|
      format.html { redirect_to food_deliveries_url, notice: 'Food delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_delivery
      @food_delivery = FoodDelivery.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_delivery_params
      params.require(:food_delivery).permit(:logo, :brand_name, :delivery_hotline, :general_email, :link_to_online_ordering_page, :facebook_page, :instagram_handle, :question_1, :featured_image, :draft, :verified, :halal_expiry, :expiry_date, :merchant_id, :listing_id, :qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], delivery_service_type_ids: [], delivery_location_ids: [], food_deliveries_menu_item_ids: [])
    end
end
