class HomiesTypesController < ApplicationController
  before_action :set_homies_type, only: [:show, :edit, :update, :destroy]

  # GET /homies_types
  # GET /homies_types.json
  def index
    @homies_types = HomiesType.all
  end

  # GET /homies_types/1
  # GET /homies_types/1.json
  def show
  end

  # GET /homies_types/new
  def new
    @homies_type = HomiesType.new
  end

  # GET /homies_types/1/edit
  def edit
  end

  # POST /homies_types
  # POST /homies_types.json
  def create
    @homies_type = HomiesType.new(homies_type_params)

    respond_to do |format|
      if @homies_type.save
        format.html { redirect_to @homies_type, notice: 'Homies type was successfully created.' }
        format.json { render :show, status: :created, location: @homies_type }
      else
        format.html { render :new }
        format.json { render json: @homies_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homies_types/1
  # PATCH/PUT /homies_types/1.json
  def update
    respond_to do |format|
      if @homies_type.update(homies_type_params)
        format.html { redirect_to @homies_type, notice: 'Homies type was successfully updated.' }
        format.json { render :show, status: :ok, location: @homies_type }
      else
        format.html { render :edit }
        format.json { render json: @homies_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homies_types/1
  # DELETE /homies_types/1.json
  def destroy
    @homies_type.destroy
    respond_to do |format|
      format.html { redirect_to homies_types_url, notice: 'Homies type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homies_type
      @homies_type = HomiesType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homies_type_params
      params.require(:homies_type).permit(:name)
    end
end
