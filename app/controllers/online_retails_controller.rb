class OnlineRetailsController < ApplicationController
  before_action :set_online_retail, only: [:show, :edit, :update, :destroy]

  # GET /online_retails
  # GET /online_retails.json
  def index
    @online_retails = OnlineRetail.all
  end

  # GET /online_retails/1
  # GET /online_retails/1.json
  def show
  end

  # GET /online_retails/new
  def new
    @current_merchant = current_merchant
    @online_retail = OnlineRetail.new
    @online_retail.listing = Listing.find_by id: params["listing_id"]
    @online_retail.rewards.build
    @online_retail.menus.build
    @online_retail.verifying_documents.build
  end

  # GET /online_retails/1/edit
  def edit
  end

  # POST /online_retails
  # POST /online_retails.json
  def create
    @online_retail = current_merchant.online_retails.new(online_retail_params)

    respond_to do |format|
      if @online_retail.save
        format.html { redirect_to @online_retail, notice: 'Online retail was successfully created.' }
        format.json { render :show, status: :created, location: @online_retail }
      else
        format.html { render :new }
        format.json { render json: @online_retail.errors, status: :unprocessable_entity }
      end
    end
    @online_retail.ordering_method_ids = params[:online_retail][:ordering_method_ids]
    @online_retail.delivery_location_ids = params[:online_retail][:delivery_location_ids]
    @online_retail.menu_item_ids = params[:online_retail][:menu_item_ids]
    @online_retail.online_retail_service_type_ids = params[:online_retail][:online_retail_service_type_ids]
    @online_retail.product_category_ids = params[:online_retail][:product_category_ids]
  end

  # PATCH/PUT /online_retails/1
  # PATCH/PUT /online_retails/1.json
  def update
    respond_to do |format|
      if @online_retail.update(online_retail_params)
        format.html { redirect_to @online_retail, notice: 'Online retail was successfully updated.' }
        format.json { render :show, status: :ok, location: @online_retail }
      else
        format.html { render :edit }
        format.json { render json: @online_retail.errors, status: :unprocessable_entity }
      end
    end
    @online_retail.rewards.build
    @online_retail.menus.build
    @online_retail.verifying_documents.build
    @online_retail.ordering_method_ids = params[:online_retail][:ordering_method_ids]
    @online_retail.delivery_location_ids = params[:online_retail][:delivery_location_ids]
    @online_retail.menu_item_ids = params[:online_retail][:menu_item_ids]
    @online_retail.online_retail_service_type_ids = params[:online_retail][:online_retail_service_type_ids]
    @online_retail.product_category_ids = params[:online_retail][:product_category_ids]
  end

  # DELETE /online_retails/1
  # DELETE /online_retails/1.json
  def destroy
    @online_retail.destroy
    respond_to do |format|
      format.html { redirect_to online_retails_url, notice: 'Online retail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_retail
      @online_retail = OnlineRetail.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def online_retail_params
      params.require(:online_retail).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :self_collection_address, :question_1, :halal_expiry, :expiry_date, :verified, :draft, :merchant_id, :listing_id, :product_qualifying_type_id, :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document],  ordering_method_ids: [], delivery_location_ids: [], menu_item_ids: [], online_retail_service_type_ids: [], product_category_ids: [])
    end
end
