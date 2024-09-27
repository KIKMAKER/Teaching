class RestaurantsController < ApplicationController

  # GET /restaurants or /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1 or /restaurants/1.json
  def show
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  # POST /restaurants or /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurant_path(@restaurant), notice: "Restaurant was successfully created." }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1 or /restaurants/1.json
  def update
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to restaurant_path(@restaurant), notice: "Restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1 or /restaurants/1.json
  def destroy
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    @restaurant.destroy

    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: "Restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:name)
    end
end
