class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def bookstoresbooks
    @bookstores = Bookstore.all
    @bookstore = Bookstore.find(params[:id])
    @books = Book.all
    # @book = Book.find(params[:id])
  end
end