class ApplicationController < ActionController::Base
  protect_from_forgery
  enable_authorization
  
  def current_user
    @_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end
end
