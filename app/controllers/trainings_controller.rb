class TrainingsController < ApplicationController
  before_action :set_training, only: [:show, :update, :destroy]

  # GET /trainings
  # GET /trainings.json
  def index
    @trainings = Training.all

    render json: @trainings
  end

  # GET /trainings/1
  # GET /trainings/1.json
  def show
    render json: @training
  end

  # POST /trainings
  # POST /trainings.json
  def create
    @training = Training.new(training_params)

    if @training.save
      render json: @training, status: :created, location: @training
    else
      render json: @training.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainings/1
  # PATCH/PUT /trainings/1.json
  def update
    @training = Training.find(params[:id])

    if @training.update(training_params)
      head :no_content
    else
      render json: @training.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainings/1
  # DELETE /trainings/1.json
  def destroy
    @training.destroy

    head :no_content
  end

  private

    def set_training
      @training = Training.find(params[:id])
    end

    def training_params
      params.require(:training).permit(:title, :price, :description)
    end
end
