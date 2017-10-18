class BakerServiceTypesController < ApplicationController
  before_action :set_baker_service_type, only: [:show, :edit, :update, :destroy]

  # GET /baker_service_types
  # GET /baker_service_types.json
  def index
    @baker_service_types = BakerServiceType.all
  end

  # GET /baker_service_types/1
  # GET /baker_service_types/1.json
  def show
  end

  # GET /baker_service_types/new
  def new
    @baker_service_type = BakerServiceType.new
  end

  # GET /baker_service_types/1/edit
  def edit
  end

  # POST /baker_service_types
  # POST /baker_service_types.json
  def create
    @baker_service_type = BakerServiceType.new(baker_service_type_params)

    respond_to do |format|
      if @baker_service_type.save
        format.html { redirect_to @baker_service_type, notice: 'Baker service type was successfully created.' }
        format.json { render :show, status: :created, location: @baker_service_type }
      else
        format.html { render :new }
        format.json { render json: @baker_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baker_service_types/1
  # PATCH/PUT /baker_service_types/1.json
  def update
    respond_to do |format|
      if @baker_service_type.update(baker_service_type_params)
        format.html { redirect_to @baker_service_type, notice: 'Baker service type was successfully updated.' }
        format.json { render :show, status: :ok, location: @baker_service_type }
      else
        format.html { render :edit }
        format.json { render json: @baker_service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baker_service_types/1
  # DELETE /baker_service_types/1.json
  def destroy
    @baker_service_type.destroy
    respond_to do |format|
      format.html { redirect_to baker_service_types_url, notice: 'Baker service type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baker_service_type
      @baker_service_type = BakerServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baker_service_type_params
      params.require(:baker_service_type).permit(:name)
    end
end
