class ApplicationController < ActionController::API
#  protect_from_forgery with: null_session
  include ActionController::Serialization
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods 
  before_action :authenticate_user_from_token, except: [:create]
  before_action :cors_preflight_check
  #after_filter :cors_set_access_control_headers

  #the method below checks for the token on requests
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
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = '*'
      headers['Access-Control-Request-Method'] = '*'
      render :text => '', :content_type => 'text/plain'
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    if auth_present?
      user = User.find(auth["user"])
      if user
        @current_user ||= user
      end
    end
  end

  def authenticate
    render json: {error: "unauthorized"}, status: 401
    unless logged_in?
    end
  end
  
  private

  def user_token
    request.env["HTTP_AUTHORIZATION"].scan(/Bearer 
        (.*)$/).flatten.last 
  end

  def auth
    Auth.decode(user_token)
  end

  def auth_present?
    !!request.env.fetch("HTTP_AUTHORIZATION", 
                        "").scan(/Bearer/).flatten.first
  end

  def authenticate_user_from_token
    unless authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
      render json: { error: 'BAD Token' }, status: 401
    end
  end

end
