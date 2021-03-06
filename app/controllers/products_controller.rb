class ProductsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @map = Product.where.not(latitude: nil, longitude: nil)

    @markers = @map.map do |p|
      {
        lat: p.latitude,
        lng: p.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { product: p })
      }
    end
    if params[:query].present?
      @products = Product.search_by_name_and_description("%#{params[:query]}%")
    else
      @products = Product.all
    end
  end

  def show
  end

  def new
    @product = Product.new
    @is_rentable = params[:rent] == 'true'
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.rentable = (%w[Weekly Monthly].include? @product.billing_period)
    @product.billing_period if @product.rentable?

    if @product.save
      # raise

      redirect_to @product
    else
      render :new
    end
  end

  def edit
    @is_rentable = params[:rent] == 'true'
  end

  def update
    if @product.update(product_params)
      @product.rentable = (%w[Weekly Monthly].include? @product.billing_period)
      @product.billing_period if @product.rentable?
      @product.save

      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  # OTHER ACTIONS

  def user_products
    @products = Product.where("user_id = #{current_user.id}")
  end

  def user_sales
    @products = Product.where("user_id = #{current_user.id}")
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :name,
      :category,
      :description,
      :price,
      :user_id,
      :photo,
      :sold,
      :rentable,
      :billing_period
    )
  end
end
