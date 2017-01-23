class SessionsController < ApplicationController
  skip_before_action :authenticate
  def create
    user = User.find_by(email: auth_params[:email])
    if user.authenticate(auth_params[:password])
      jwt = Auth.issue( {user: user.id,
                         admin: user.admin} )
      render json: {access_token: jwt, status: 200}
    else
      render json: {error: 'You have been denied'}, status: 401
    end
  end

  def logout
  end

  private
  def auth_params
    params.require(:users_information).permit(:email, :password)
  end
end
