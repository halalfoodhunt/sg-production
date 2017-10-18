class HomieServiceTypesController < ApplicationController
  before_action :set_homie_service_type, only: [:show, :edit, :update, :destroy]

  # GET /homie_service_types
  # GET /homie_service_types.json
  def index
    @homie_service_types = HomieServiceType.all
  end

  # GET /homie_service_types/1
  # GET /homie_service_types/1.json
  def show
  end

  # GET /homie_service_types/new
  def new
    @homie_service_type = HomieServiceType.new
  end

  # GET /homie_service_types/1/edit
  def edit
  end

  # POST /homie_service_types
  # POST /homie_service_types.json
  def create
    @homie_service_type = HomieServiceType.new(homie_service_type_params)

    respond_to do |format|
      if @homie_service_type.save
        format.html { redirect_to @homie_service_type, notice: 'Homie service type was successfully created.' }
        format.json { render :show, status: :created, location: @homie_service_type }
      else
        format.html { render :new }
        format.json { render json: @homie_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homie_service_types/1
  # PATCH/PUT /homie_service_types/1.json
  def update
    respond_to do |format|
      if @homie_service_type.update(homie_service_type_params)
        format.html { redirect_to @homie_service_type, notice: 'Homie service type was successfully updated.' }
        format.json { render :show, status: :ok, location: @homie_service_type }
      else
        format.html { render :edit }
        format.json { render json: @homie_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homie_service_types/1
  # DELETE /homie_service_types/1.json
  def destroy
    @homie_service_type.destroy
    respond_to do |format|
      format.html { redirect_to homie_service_types_url, notice: 'Homie service type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homie_service_type
      @homie_service_type = HomieServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homie_service_type_params
      params.require(:homie_service_type).permit(:name)
    end
end
