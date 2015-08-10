class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

 def index
   @soundc = Soundc.all
end

  protect_from_forgery with: :exception
  before_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'https://visplay.herokuapp.com/'
    headers['Access-Control-Request-Method'] = '*'
  end
end
