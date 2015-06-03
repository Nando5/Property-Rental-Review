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

  # helper_method :current_tenant 
  def current_tenant
     @current_tenant ||= Tenant.find(session[:tenant_id]) if session[:tenant_id] 
  end
  
  def require_tenant 
  	 redirect_to '/login' unless current_tenant 
  end

  def intellinav
    nav = ''

    # if @current_tenant.present?
    #   nav += '<li>' + link_to('Show my properties', tenant_path(@current_tenant.id)) + '</li>'
    # end

    if @current_tenant.present?
      nav += '<li>' + link_to("Add Property", new_property_path(@current_tenant)) + '</li>'
      # nav += '<li>' + link_to("Add Review", new_review_path(@current_tenant)) + '</li>'
      nav += '<li>' + link_to("Profile", tenant_path(@current_tenant)) + '</li>'
      nav += '<li>' + link_to("Log out #{ @current_tenant.name }", login_path, :method => :delete) + '</li>'
    else
      nav += '<li>' + link_to('Sign up', new_tenant_path) + '</li>'
      nav += '<li>' + link_to('Log in', login_path) + '</li>'
    end

    nav
  end
