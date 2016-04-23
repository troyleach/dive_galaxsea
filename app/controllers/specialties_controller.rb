class SpecialtiesController < ApplicationController
  before_action :set_specialty, only: [:show, :update, :destroy]

  # GET /specialties
  # GET /specialties.json
  def index
    @specialties = Specialty.all

    render json: @specialties
  end

  # GET /specialties/1
  # GET /specialties/1.json
  def show
    render json: @specialty
  end

  # POST /specialties
  # POST /specialties.json
  def create
    @specialty = Specialty.new(specialty_params)

    if @specialty.save
      render json: @specialty, status: :created, location: @specialty
    else
      render json: @specialty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /specialties/1
  # PATCH/PUT /specialties/1.json
  def update
    @specialty = Specialty.find(params[:id])

    if @specialty.update(specialty_params)
      head :no_content
    else
      render json: @specialty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /specialties/1
  # DELETE /specialties/1.json
  def destroy
    @specialty.destroy

    head :no_content
  end

  private

    def set_specialty
      @specialty = Specialty.find(params[:id])
    end

    def specialty_params
      params.require(:specialty).permit(:title, :price, :description)
    end
end
