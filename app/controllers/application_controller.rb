class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  private
  def authenticate
  	# session[:tenant_id] = nil
    @current_tenant = Tenant.find session[:tenant_id] if session[:tenant_id]
  end
end
