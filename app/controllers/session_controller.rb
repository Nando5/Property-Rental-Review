class SessionController < ApplicationController
  def index
  end

 def create
    tenant = Tenant.find_by :name => params[:email]
    if tenant.present? && tenant.authenticate(params[:password])
      session[:tenant_id] = tenant.id
      redirect_to root_path
    else
      flash[:notice] = "Invalid login, please try again."
      redirect_to login_path
    end
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    session[:tenant_id] = nil
    redirect_to root_path
  end
end