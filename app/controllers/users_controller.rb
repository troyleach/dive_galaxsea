class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]
  # before_filter :authenticate_user_from_token, only: [:index, :show, :update, :destroy]

  # def login
  # TODO: erase this, this is now handled in sessions
  #   user = User.find_by(email: params[:email].to_s.downcase)
  #   binding.pry

  #   if user && user.authenticate(params[:password])
  #     auth_token = JsonWebToken.encode({user_id: user.id})
  #     render json: {auth_token: auth_token}, status: :ok
  #   else
  #     render json: {error: 'Invalid user / passowrd'}, status: :unauthorized
  #   end
  # end

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      AdminMailer.admin_email(@user).deliver_later
      AdminMailer.confirmation_email(@user).deliver_later
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :password, :auth_token, :comments,
                                 vacations_attributes: [:id,
                                                        :number_of_divers,
                                                        :resort,
                                                        dates_array: [],
                                                        diving_objects: %i[id title price description created_at updated_at],
                                                        training_objects: %i[id title price description created_at updated_at]])
  end
end
