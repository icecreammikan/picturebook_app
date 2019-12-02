class ReviewsController < ApplicationController
  # def new
  #   @reviews = Review.new
  # end
  
  def create
    @review = Review.create(review_params)
    respond_to do |format|
      format.html { redirect_to book_path(params[:book_id])  }
      # redirect_to "/books/#{review.book.id}"
    end
  end

  private
  def review_params
    params.require(:review).permit(:review).merge(book_id: params[:book_id])
  end
end
