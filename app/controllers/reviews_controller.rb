class ReviewsController < ApplicationController
  def create
    @arcade = Arcade.find(params[:arcade_id])
    @review = Review.new(review_params)
    @review.arcade = @arcade
    if @review.save
      redirect_to arcade_path(@arcade)
    else
      render 'arcades/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
