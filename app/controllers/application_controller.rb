class ApplicationController < ActionController::API
#  protect_from_forgery with: null_session
  before_filter :cors_preflight_check
  #after_filter :cors_set_access_control_headers

  def cors_preflight_check
    if request.method == :options
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Allow-Headers'] = '*'
      headers['Access-Control-Request-Method'] = '*'
      render :text => '', :content_type => 'text/plain'
    end
  end
end
