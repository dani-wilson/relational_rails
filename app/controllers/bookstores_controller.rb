class BookstoresController < ApplicationController
  def index
    @bookstores = Bookstore.all
  end
  
  def show
    @bookstore = Bookstore.find(params[:id])
  end

  def new
  end

  def create
    new_bookstore = Bookstore.new({
        name: params[:bookstore][:name],
        city: params[:bookstore][:city],
        hours: params[:bookstore][:hours],
        parking_spots: params[:bookstore][:parking_spots],
        coffee_shop: params[:bookstore][:coffee_shop]
      })

      new_bookstore.save
        
      redirect_to '/bookstores'
  end
end