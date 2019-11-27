class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @books = Book.new
  end

  def create
    Book.create(book_params)
  end

  def show
    @book = Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :image, :text)
  end
end

