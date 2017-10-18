class RawFoodProductCategoriesController < ApplicationController
  before_action :set_raw_food_product_category, only: [:show, :edit, :update, :destroy]

  # GET /raw_food_product_categories
  # GET /raw_food_product_categories.json
  def index
    @raw_food_product_categories = RawFoodProductCategory.all
  end

  # GET /raw_food_product_categories/1
  # GET /raw_food_product_categories/1.json
  def show
  end

  # GET /raw_food_product_categories/new
  def new
    @raw_food_product_category = RawFoodProductCategory.new
  end

  # GET /raw_food_product_categories/1/edit
  def edit
  end

  # POST /raw_food_product_categories
  # POST /raw_food_product_categories.json
  def create
    @raw_food_product_category = RawFoodProductCategory.new(raw_food_product_category_params)

    respond_to do |format|
      if @raw_food_product_category.save
        format.html { redirect_to @raw_food_product_category, notice: 'Raw food product category was successfully created.' }
        format.json { render :show, status: :created, location: @raw_food_product_category }
      else
        format.html { render :new }
        format.json { render json: @raw_food_product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_food_product_categories/1
  # PATCH/PUT /raw_food_product_categories/1.json
  def update
    respond_to do |format|
      if @raw_food_product_category.update(raw_food_product_category_params)
        format.html { redirect_to @raw_food_product_category, notice: 'Raw food product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_food_product_category }
      else
        format.html { render :edit }
        format.json { render json: @raw_food_product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_food_product_categories/1
  # DELETE /raw_food_product_categories/1.json
  def destroy
    @raw_food_product_category.destroy
    respond_to do |format|
      format.html { redirect_to raw_food_product_categories_url, notice: 'Raw food product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_food_product_category
      @raw_food_product_category = RawFoodProductCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_food_product_category_params
      params.require(:raw_food_product_category).permit(:name)
    end
end
