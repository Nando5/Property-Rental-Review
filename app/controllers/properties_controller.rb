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
      :time_lived => params["properties"]["time_lived"], 
      :building_condition => params["properties"]["building_condition"],
      :kitchen_condition => params["properties"]["kitchen_condition"], 
      :bathroom_condition => params["properties"]["bathroom_condition"],
      :bedroom_condition => params["properties"]["bedroom_condition"],
      :area_crime => params["properties"]["area_crime"], 
      :area_proximity => params["properties"]["area_proximity"],
      :property_management => params["properties"]["property_management"], 
      :overall_comment => params["properties"]["overall_comment"]
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
    redirect_to tenant_path(@current_tenant)
  end

  def search
    query_from_form = params["search"]["query"]
    @properties = Property.where(["suburb ILIKE :query or 
                                   street_address ILIKE :query or 
                                   state ILIKE :query or 
                                   postcode ILIKE :query", { query: query_from_form }])

    render :index
  end

  private
  def property_params
    params.require(:property).permit(:street_address, :suburb, :state, :postcode)
  end
end























