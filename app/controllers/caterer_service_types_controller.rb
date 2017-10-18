class CatererServiceTypesController < ApplicationController
  before_action :set_caterer_service_type, only: [:show, :edit, :update, :destroy]

  # GET /caterer_service_types
  # GET /caterer_service_types.json
  def index
    @caterer_service_types = CatererServiceType.all
  end

  # GET /caterer_service_types/1
  # GET /caterer_service_types/1.json
  def show
  end

  # GET /caterer_service_types/new
  def new
    @caterer_service_type = CatererServiceType.new
  end

  # GET /caterer_service_types/1/edit
  def edit
  end

  # POST /caterer_service_types
  # POST /caterer_service_types.json
  def create
    @caterer_service_type = CatererServiceType.new(caterer_service_type_params)

    respond_to do |format|
      if @caterer_service_type.save
        format.html { redirect_to @caterer_service_type, notice: 'Caterer service type was successfully created.' }
        format.json { render :show, status: :created, location: @caterer_service_type }
      else
        format.html { render :new }
        format.json { render json: @caterer_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caterer_service_types/1
  # PATCH/PUT /caterer_service_types/1.json
  def update
    respond_to do |format|
      if @caterer_service_type.update(caterer_service_type_params)
        format.html { redirect_to @caterer_service_type, notice: 'Caterer service type was successfully updated.' }
        format.json { render :show, status: :ok, location: @caterer_service_type }
      else
        format.html { render :edit }
        format.json { render json: @caterer_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterer_service_types/1
  # DELETE /caterer_service_types/1.json
  def destroy
    @caterer_service_type.destroy
    respond_to do |format|
      format.html { redirect_to caterer_service_types_url, notice: 'Caterer service type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caterer_service_type
      @caterer_service_type = CatererServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterer_service_type_params
      params.require(:caterer_service_type).permit(:name)
    end
end
