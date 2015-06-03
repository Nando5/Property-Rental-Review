class TenantsController < ApplicationController
  
  # before_action :check_if_admin, :only => [:index]

  def index
    @tenants = Tenant.all
  end

  def create
    @tenant = Tenant.new tenant_params

    if @tenant.save
      redirect_to "/tenants/#{@tenant.id}"
    else
      render :new
    end
  end

  def new
    @tenant = Tenant.new
  end

  
  def edit
    @tenant = @current_tenant
    render :new
  end

  def show
    @tenant = Tenant.find params[:id]
  end

  def update
    tenant = @current_tenant
    tenant.update tenant_params
    redirect_to tenant_path(@current_tenant)
  end

  def destroy
    session[:tenant_id] = nil
    tenant = @current_tenant
    tenant.destroy
    redirect_to root_path
  end

  private
  def tenant_params
    params.require(:tenant).permit(:name, :email, :password, :password_confirmation)
  end

  # def check_if_admin
  #   redirect_to root_path unless @current_tenant.present? && @current_tenant.admin?
  # end

end
