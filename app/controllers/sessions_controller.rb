class SessionsController < ApplicationController
  skip_before_action :authenticate
  def create
    user = User.find_by(email: auth_params[:email])
    binding.pry
    if user.authenticate(auth_params[:password])
      jwt = Auth.issue( {user: user.id,
                         admin: user.admin} )
      puts "this is the jwt #{jwt}"
      render json: {access_token: jwt, status: 200}
    else
      puts 'this did not work fucker face'
      render json: {error: 'You have been denied', status: 444}
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
