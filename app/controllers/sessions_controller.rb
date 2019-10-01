class SessionsController < ApplicationController
  skip_before_action :authenticate
  def create
    puts "LOGGING params #{params}"
    puts "LOGGING auth_params #{auth_params[:email]}"
    user = User.find_by(email: auth_params[:email])
    puts "LOGGING user #{user}"
    if user.authenticate(auth_params[:password])
      jwt = Auth.issue(user: user.email,
                       admin: user.admin)
      user.auth_token = jwt
      user.save!
      puts "LOGGING user #{user}"
      render json: { access_token: jwt }, status: 200
    else
      render json: { error: 'You have been denied' }, status: 401
    end
  end

  def logout
    jwt = request.headers.env['HTTP_AUTHORIZATION'].split(' ').last
    user = User.find_by_auth_token(jwt)
    user.auth_token = nil
    user.save!
    head :no_content
  end

  private

  def auth_params
    params.require(:users_information).permit(:email, :password)
  end
end
