class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def create
    property = Property.create property_params
    @current_tenant.properties << property
    redirect_to property
  end

  def create_review
    property = Property.find( params[:id] )
    
    property.reviews.create( 
      :comment => params["properties"]["comment"], 
      :rating => params["properties"]["rating"]
    )

    redirect_to property_path( property )
  end

  def new
    @property = Property.new
  end

  def edit
    @property = Property.find params[:id] 
  end

  def show
    @review = Review.new
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
