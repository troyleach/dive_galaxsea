class VacationsController < ApplicationController
  before_action :set_vacation, only: [:show, :update, :destroy]

  # GET /vacations
  # GET /vacations.json
  def index
    @vacations = Vacation.all

    render json: @vacations
  end

  # GET /vacations/1
  # GET /vacations/1.json
  def show
    render json: @vacation
  end

  # POST /vacations
  # POST /vacations.json
  def create
    @vacation = Vacation.new(vacation_params)

    if @vacation.save
      render json: @vacation, status: :created, location: @vacation
    else
      render json: @vacation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vacations/1
  # PATCH/PUT /vacations/1.json
  def update
    @vacation = Vacation.find(params[:id])

    if @vacation.update(vacation_params)
      head :no_content
    else
      render json: @vacation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vacations/1
  # DELETE /vacations/1.json
  def destroy
    @vacation.destroy

    head :no_content
  end

  private

    def set_vacation
      @vacation = Vacation.find(params[:id])
    end

    def vacation_params
      params.permit(:user_id, :dates_array, :diving_objects, :training_objects, :number_of_divers, :resort)
      #params.require(:vacation).permit(:user_id, :dates_array, :diving_objects, :training_objects)
    end
end
