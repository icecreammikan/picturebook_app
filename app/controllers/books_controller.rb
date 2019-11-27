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

  private
  def book_params
    params.require(:book).permit(:name, :image, :text)
  end
end
