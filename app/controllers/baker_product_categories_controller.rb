class BakerProductCategoriesController < ApplicationController
  before_action :set_baker_product_category, only: [:show, :edit, :update, :destroy]

  # GET /baker_product_categories
  # GET /baker_product_categories.json
  def index
    @baker_product_categories = BakerProductCategory.all
  end

  # GET /baker_product_categories/1
  # GET /baker_product_categories/1.json
  def show
  end

  # GET /baker_product_categories/new
  def new
    @baker_product_category = BakerProductCategory.new
  end

  # GET /baker_product_categories/1/edit
  def edit
  end

  # POST /baker_product_categories
  # POST /baker_product_categories.json
  def create
    @baker_product_category = BakerProductCategory.new(baker_product_category_params)

    respond_to do |format|
      if @baker_product_category.save
        format.html { redirect_to @baker_product_category, notice: 'Baker product category was successfully created.' }
        format.json { render :show, status: :created, location: @baker_product_category }
      else
        format.html { render :new }
        format.json { render json: @baker_product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baker_product_categories/1
  # PATCH/PUT /baker_product_categories/1.json
  def update
    respond_to do |format|
      if @baker_product_category.update(baker_product_category_params)
        format.html { redirect_to @baker_product_category, notice: 'Baker product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @baker_product_category }
      else
        format.html { render :edit }
        format.json { render json: @baker_product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baker_product_categories/1
  # DELETE /baker_product_categories/1.json
  def destroy
    @baker_product_category.destroy
    respond_to do |format|
      format.html { redirect_to baker_product_categories_url, notice: 'Baker product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baker_product_category
      @baker_product_category = BakerProductCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baker_product_category_params
      params.require(:baker_product_category).permit(:name)
    end
end
