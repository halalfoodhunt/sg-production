class OrderingMethodsController < ApplicationController
  before_action :set_ordering_method, only: [:show, :edit, :update, :destroy]

  # GET /ordering_methods
  # GET /ordering_methods.json
  def index
    @ordering_methods = OrderingMethod.all
  end

  # GET /ordering_methods/1
  # GET /ordering_methods/1.json
  def show
  end

  # GET /ordering_methods/new
  def new
    @ordering_method = OrderingMethod.new
  end

  # GET /ordering_methods/1/edit
  def edit
  end

  # POST /ordering_methods
  # POST /ordering_methods.json
  def create
    @ordering_method = OrderingMethod.new(ordering_method_params)

    respond_to do |format|
      if @ordering_method.save
        format.html { redirect_to @ordering_method, notice: 'Ordering method was successfully created.' }
        format.json { render :show, status: :created, location: @ordering_method }
      else
        format.html { render :new }
        format.json { render json: @ordering_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordering_methods/1
  # PATCH/PUT /ordering_methods/1.json
  def update
    respond_to do |format|
      if @ordering_method.update(ordering_method_params)
        format.html { redirect_to @ordering_method, notice: 'Ordering method was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordering_method }
      else
        format.html { render :edit }
        format.json { render json: @ordering_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordering_methods/1
  # DELETE /ordering_methods/1.json
  def destroy
    @ordering_method.destroy
    respond_to do |format|
      format.html { redirect_to ordering_methods_url, notice: 'Ordering method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordering_method
      @ordering_method = OrderingMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordering_method_params
      params.require(:ordering_method).permit(:name)
    end
end
