class TenantsController < ApplicationController
  def index
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
  end

  def show
  end

  def update
  end

  def destroy
  end
end
