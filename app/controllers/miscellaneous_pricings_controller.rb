class MiscellaneousPricingsController < ApplicationController
  before_action :set_miscellaneous_pricing, only: [:show, :update, :destroy]

  # GET /miscellaneous_pricings
  # GET /miscellaneous_pricings.json
  def index
    @miscellaneous_pricings = MiscellaneousPricing.all

    render json: @miscellaneous_pricings
  end

  # GET /miscellaneous_pricings/1
  # GET /miscellaneous_pricings/1.json
  def show
    render json: @miscellaneous_pricing
  end

  # POST /miscellaneous_pricings
  # POST /miscellaneous_pricings.json
  def create
    @miscellaneous_pricing = MiscellaneousPricing.new(miscellaneous_pricing_params)

    if @miscellaneous_pricing.save
      render json: @miscellaneous_pricing, status: :created, location: @miscellaneous_pricing
    else
      render json: @miscellaneous_pricing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /miscellaneous_pricings/1
  # PATCH/PUT /miscellaneous_pricings/1.json
  def update
    @miscellaneous_pricing = MiscellaneousPricing.find(params[:id])

    if @miscellaneous_pricing.update(miscellaneous_pricing_params)
      head :no_content
    else
      render json: @miscellaneous_pricing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /miscellaneous_pricings/1
  # DELETE /miscellaneous_pricings/1.json
  def destroy
    @miscellaneous_pricing.destroy

    head :no_content
  end

  private

    def set_miscellaneous_pricing
      @miscellaneous_pricing = MiscellaneousPricing.find(params[:id])
    end

    def miscellaneous_pricing_params
      params.require(:miscellaneous_pricing).permit(:title, :price, :description)
    end
end
