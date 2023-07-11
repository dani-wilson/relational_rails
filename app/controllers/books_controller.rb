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
  end

  def new
    @bookstore = Bookstore.find(params[:id])
  end

  def create
    @bookstore = Bookstore.find(params[:id])
    new_book = Book.new({
      book_title: params[:book_title],
      bookstore_id: @bookstore.id,
      author: params[:author],
      genre: params[:genre],
      available_copies: params[:available_copies],
      price: params[:price],
      on_sale: params[:on_sale]
  })
    
    new_book.save
        
    redirect_to "/bookstores/#{@bookstore.id}/books"
  end

  private
  def book_params
    params.permit(:book_title, :bookstore_id, :on_sale, :author, :genre, :available_copies, :price)
  end
end