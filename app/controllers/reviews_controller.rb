class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @review = Review.create(review_params)
    @review.cocktail = @cocktail

    if @review.save
      redirect_to cocktail_path(@cocktail, anchor: "review-#{@review.id}")
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @cocktail = @review.cocktail
    redirect_to cocktail_url(@cocktail, anchor: 'orders-title')
  end

  private

  def review_params
    params.require(:review).permit(:rating, :author, :content)
  end
end
