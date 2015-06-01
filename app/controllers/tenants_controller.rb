class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end

  def create
    @tenant = Tenant.new tenant_params

    if @tenant.save
      redirect_to root_path
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
  end

  def update
  end

  def destroy
  end

  private
  def tenant_params
    params.require(:tenant).permit(:name, :email, :password, :password_confirmation)
  end

end
