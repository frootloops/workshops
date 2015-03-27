class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :index]

  expose(:review)
  expose(:reviews)
  expose(:product)
  expose_decorated(:reviews)

  def index
    self.reviews = current_user.reviews.last(5)
  end

  def edit
  end

  def create
    self.review = Review.new(review_params)
    review.user = current_user

    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
