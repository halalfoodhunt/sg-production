class CaterersController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_caterer, only: [:show, :edit, :update, :destroy]

  # GET /caterers
  # GET /caterers.json
  def index
    @caterers = Caterer.all
  end

  # GET /caterers/1
  # GET /caterers/1.json
  def show
  end

  # GET /caterers/new
  def new
    @current_merchant = current_merchant
    @caterer = Caterer.new(listing_id: params[:listing_id])
    @caterer.listing = Listing.find_by id: params["listing_id"]
    @caterer.opening_hours.build
    @caterer.rewards.build
    @caterer.menus.build
    @caterer.verifying_documents.build
  end

  # GET /caterers/1/edit
  def edit
  end

  # POST /caterers
  # POST /caterers.json
  def create
    @caterer = current_merchant.caterers.new(caterer_params)

    respond_to do |format|
      if @caterer.save
        format.html { redirect_to @caterer, notice: 'Caterer was successfully created.' }
        format.json { render :show, status: :created, location: @caterer }
      else
        format.html { render :new }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
    @caterer.caterer_type_ids = params[:caterer][:delivery_location_ids]
    @caterer.cuisine_type_ids = params[:caterer][:delivery_service_type_ids]
    @caterer.caterer_service_type_ids = params[:caterer][:caterer_service_type_ids]
    @caterer.event_type_ids = params[:caterer][:event_type_ids]
  end

  # PATCH/PUT /caterers/1
  # PATCH/PUT /caterers/1.json
  def update
    respond_to do |format|
      if @caterer.update(caterer_params)
        format.html { redirect_to @caterer, notice: 'Caterer was successfully updated.' }
        format.json { render :show, status: :ok, location: @caterer }
      else
        format.html { render :edit }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
    @caterer.opening_hours.build
    @caterer.rewards.build
    @caterer.menus.build
    @caterer.verifying_documents.build
    @caterer.caterer_type_ids = params[:caterer][:delivery_location_ids]
    @caterer.cuisine_type_ids = params[:caterer][:delivery_service_type_ids]
    @caterer.caterer_service_type_ids = params[:caterer][:caterer_service_type_ids]
    @caterer.event_type_ids = params[:caterer][:event_type_ids]
  end

  # DELETE /caterers/1
  # DELETE /caterers/1.json
  def destroy
    @caterer.destroy
    respond_to do |format|
      format.html { redirect_to caterers_url, notice: 'Caterer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caterer
      @caterer = Caterer.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterer_params
      params.require(:caterer).permit(:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :question_1, :expiry_date, :halal_expiry, :verified, :draft, :merchant_id, :listing_id, :qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], caterer_type_ids: [], caterer_service_type_ids: [], cuisine_type_ids: [], event_type_ids: [])
    end
end
