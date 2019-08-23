class ReviewsController < ApplicationController
  def create
    @arcade = Arcade.find(params[:arcade_id])
    @review = Review.new(review_params)
    @review.arcade = @arcade
    authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to arcade_path(@arcade) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'arcades/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
