class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def create
     property = Property.create property_params
     redirect_to property
  end

  def new
     @property = Property.new
  end

  def edit
     @property = Property.find params[:id] 
  end

  def show
     @property = Property.find params[:id] 
  end

  def update
     property = Property.find params[:id]
     property.update property_params
     redirect_to property
  end

  def destroy
    property = Property.find params[:id]
    property.destroy
    redirect_to properties_path
  end

    private
  def property_params
    params.require(:property).permit(:street_address, :suburb, :state, :postcode)
  end
end
