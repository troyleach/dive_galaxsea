class DivingsController < ApplicationController
  before_action :set_diving, only: %i[show update destroy]
  # TODO: need to set up a before_action auth the user only on :update, :create

  # GET /divings
  # GET /divings.json
  def index
    @divings = Diving.all

    render json: @divings
  end

  # GET /divings/1
  # GET /divings/1.json
  def show
    render json: @diving
  end

  # POST /divings
  # POST /divings.json
  def create
    @diving = Diving.new(diving_params)

    if @diving.save
      render json: @diving, status: :created, location: @diving
    else
      render json: @diving.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /divings/1
  # PATCH/PUT /divings/1.json
  def update
    @diving = Diving.find(params[:id])
    if @diving.update(diving_params)
      head :no_content
    else
      render json: @diving.errors, status: :unprocessable_entity
    end
  end

  # DELETE /divings/1
  # DELETE /divings/1.json
  def destroy
    @diving.destroy

    head :no_content
  end

  private

  def set_diving
    @diving = Diving.find(params[:id])
  end

  def diving_params
    params.require(:diving).permit(:title, :price, :description)
  end
end
