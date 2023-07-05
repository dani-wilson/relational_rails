class BookstoresController < ApplicationController
  def index
    @bookstores = ["bookstore 1", "bookstore 2", "bookstore 3"]
  end
end