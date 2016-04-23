class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :update, :destroy]

  # GET /rentals
  # GET /rentals.json
  def index
    @rentals = Rental.all

    render json: @rentals
  end

  # GET /rentals/1
  # GET /rentals/1.json
  def show
    render json: @rental
  end

  # POST /rentals
  # POST /rentals.json
  def create
    @rental = Rental.new(rental_params)

    if @rental.save
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rentals/1
  # PATCH/PUT /rentals/1.json
  def update
    @rental = Rental.find(params[:id])

    if @rental.update(rental_params)
      head :no_content
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rentals/1
  # DELETE /rentals/1.json
  def destroy
    @rental.destroy

    head :no_content
  end

  private

    def set_rental
      @rental = Rental.find(params[:id])
    end

    def rental_params
      params.require(:rental).permit(:title, :price, :description)
    end
end
