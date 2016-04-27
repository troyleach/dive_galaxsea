class ApplicationController < ActionController::API
#  protect_from_forgery with: null_session
  include ActionController::Serialization
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods 
  before_filter :cors_preflight_check
  before_filter :authenticate_user_from_token, except: [:token]
  #after_filter :cors_set_access_control_headers

  def token
    authenticate_with_http_basic do |email, password|
      user = User.find_by(email: email)
      if user && user.password == password
        render json: { token: user.auth_token }
      else
        render json: { error: 'REALLY?? Incorrect credentials' }, status: 401
      end
    end
  end

  def cors_preflight_check
    if request.method == :options
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Allow-Headers'] = '*'
      headers['Access-Control-Request-Method'] = '*'
      render :text => '', :content_type => 'text/plain'
    end
  end

  private

  def authenticate_user_from_token
    unless authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
      render json: { error: 'BAD Token' }, status: 401
    end
  end

end
