class BooksController < ApplicationController

  def index
    @books = Book.all
    # .order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @book = Book.new
    # @review = Review.new
  end

  def create
    Book.create(book_params)
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
    # @reviews = @book.reviews
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :image, :author)
  end

def set_book
  @book = Book.find(params[:id])
end

end

