class MainOrderingMethodsController < ApplicationController
  before_action :set_main_ordering_method, only: [:show, :edit, :update, :destroy]

  # GET /main_ordering_methods
  # GET /main_ordering_methods.json
  def index
    @main_ordering_methods = MainOrderingMethod.all
  end

  # GET /main_ordering_methods/1
  # GET /main_ordering_methods/1.json
  def show
  end

  # GET /main_ordering_methods/new
  def new
    @main_ordering_method = MainOrderingMethod.new
  end

  # GET /main_ordering_methods/1/edit
  def edit
  end

  # POST /main_ordering_methods
  # POST /main_ordering_methods.json
  def create
    @main_ordering_method = MainOrderingMethod.new(main_ordering_method_params)

    respond_to do |format|
      if @main_ordering_method.save
        format.html { redirect_to @main_ordering_method, notice: 'Main ordering method was successfully created.' }
        format.json { render :show, status: :created, location: @main_ordering_method }
      else
        format.html { render :new }
        format.json { render json: @main_ordering_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_ordering_methods/1
  # PATCH/PUT /main_ordering_methods/1.json
  def update
    respond_to do |format|
      if @main_ordering_method.update(main_ordering_method_params)
        format.html { redirect_to @main_ordering_method, notice: 'Main ordering method was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_ordering_method }
      else
        format.html { render :edit }
        format.json { render json: @main_ordering_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_ordering_methods/1
  # DELETE /main_ordering_methods/1.json
  def destroy
    @main_ordering_method.destroy
    respond_to do |format|
      format.html { redirect_to main_ordering_methods_url, notice: 'Main ordering method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_ordering_method
      @main_ordering_method = MainOrderingMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_ordering_method_params
      params.require(:main_ordering_method).permit(:name)
    end
end
