class BakersController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_baker, only: [:show, :edit, :update, :destroy]

  # GET /bakers
  # GET /bakers.json
  def index
    @bakers = Baker.all
  end

  # GET /bakers/1
  # GET /bakers/1.json
  def show
  end

  # GET /bakers/new
  def new
    @current_merchant = current_merchant
    @baker = Baker.new(listing_id: params[:listing_id])
    @baker.listing = Listing.find_by id: params["listing_id"]
    @baker.opening_hours.build
    @baker.rewards.build
    @baker.menus.build
    @baker.verifying_documents.build
  end

  # GET /bakers/1/edit
  def edit
  end

  # POST /bakers
  # POST /bakers.json
  def create
    @baker = current_merchant.bakers.new(baker_params)

    respond_to do |format|
      if @baker.save
        format.html { redirect_to @baker, notice: 'Baker was successfully created.' }
        format.json { render :show, status: :created, location: @baker }
      else
        format.html { render :new }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
    @baker.ordering_method_ids = params[:baker][:ordering_method_ids]
    @baker.delivery_location_ids = params[:baker][:delivery_location_ids]
    @baker.menu_item_ids = params[:baker][:menu_item_ids]
    @baker.baker_service_type_ids = params[:baker][:baker_service_type_ids]
    @baker.baker_product_category_ids = params[:baker][:baker_product_category_ids]
  end

  # PATCH/PUT /bakers/1
  # PATCH/PUT /bakers/1.json
  def update
    respond_to do |format|
      if @baker.update(baker_params)
        format.html { redirect_to @baker, notice: 'Baker was successfully updated.' }
        format.json { render :show, status: :ok, location: @baker }
      else
        format.html { render :edit }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
    @baker.opening_hours.build
    @baker.rewards.build
    @baker.menus.build
    @baker.verifying_documents.build
    @baker.ordering_method_ids = params[:baker][:ordering_method_ids]
    @baker.delivery_location_ids = params[:baker][:delivery_location_ids]
    @baker.menu_item_ids = params[:baker][:menu_item_ids]
    @baker.baker_service_type_ids = params[:baker][:baker_service_type_ids]
    @baker.baker_product_category_ids = params[:baker][:baker_product_category_ids]
  end

  # DELETE /bakers/1
  # DELETE /bakers/1.json
  def destroy
    @baker.destroy
    respond_to do |format|
      format.html { redirect_to bakers_url, notice: 'Baker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baker
      @baker = Baker.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baker_params
      params.require(:baker).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :self_collection_address, :question_1, :featured_image,  :expiry_date, :halal_expiry, :verified, :draft, :merchant_id, :listing_id, :qualifying_type_id, :baker_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document],  ordering_method_ids: [], delivery_location_ids: [], menu_item_ids: [], baker_service_type_ids: [], baker_product_category_ids: [])
    end
end
