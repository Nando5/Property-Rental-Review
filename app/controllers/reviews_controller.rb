class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def create
    prop_id = params[:review][:property_id]
    review = Review.create review_params

    @current_tenant.reviews << review
    Property.find( prop_id ).reviews << review

    redirect_to review
  end

  def new
    # raise params.inspect
    @review = Review.new
  end

  def edit
    @review = Review.find params[:id] 
  end

  def show
    @review = Review.find params[:id] 
  end

  def update
     review = Review.find params[:id]
     review.update review_params
     redirect_to review
  end

  def destroy
    review = Review.find params[:id]
    review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
