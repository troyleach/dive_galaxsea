class SessionsController < ApplicationController
  skip_before_action :authenticate
  def create
    user = User.find_by(email: auth_params[:email])
    if user.authenticate(auth_params[:password])
      jwt = Auth.issue( {user: user.id,
                         admin: user.admin} )
      render json: {access_token: jwt}
    else
    end
  end

  def logout
    puts " *" * 100
    puts 'this did some shit'
  end

  private
  def auth_params
    params.require(:users_information).permit(:email, :password)
  end
end
