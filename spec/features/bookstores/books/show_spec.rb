  require "rails_helper"
  
  RSpec.describe Book do
  before :each do
    @bookstore1 = Bookstore.create!(name: "Golden Braid Books", city: "Salt Lake City",coffee_shop: true, parking_spots: 50, hours: "9 am - 6 pm")
    @bookstore2 = Bookstore.create!(name: "Reader's Roost", city: "Vernal", coffee_shop: true, parking_spots: 15, hours: "7 am - 5 pm")
    @bookstore3 = Bookstore.create!(name: "Brevity Books", city: "Jensen", coffee_shop: false, parking_spots: 10, hours: "8 am - 7 pm")
    @bookstore4 = Bookstore.create!(name: "A Novel Idea", city: "Roosevelt", coffee_shop: true, parking_spots: 15, hours: "8 am - 6 pm")
    @bookstore5 = Bookstore.create!(name: "Tomes & Trinkets", city: "Vernal", coffee_shop: false, parking_spots: 20, hours: "10 am - 7 pm")
    @book1 = Book.create!(book_title: "Of Mice and Men", author: "John Steinbeck", genre: "social realism", on_sale: false, available_copies: 1, price: 15.00, bookstore_id: 5)
    @book2 = Book.create!(book_title: "Every Summer After", author: "Carley Fortune", genre: "romance", on_sale: false, available_copies: 3, price: 25.00, bookstore_id: 3)
    @book3 = Book.create!(book_title: "Gallant", author: "V.E. Schwab", genre: "fantasy", on_sale: true, available_copies: 5, price: 25.00, bookstore_id: 2)
    @book4 = Book.create!(book_title: "Words of Radiance", author: "Brandon Sanderson", genre: "fantasy", on_sale: false, available_copies: 10, price: 45.00, bookstore_id: 1)
    @book5 = Book.create!(book_title: "The Silent Patient", author: "Alex Michaelides", genre: "psychological thriller", on_sale: true, available_copies: 4, price: 16.00, bookstore_id: 4)
  end
  
  describe "/books show page" do
    it "can view each book on its own page by id with attributes" do
        visit "/books/1"
        
        expect(page).to have_content(@book1.book_title)
        expect(page).to have_content(@book1.author)
        expect(page).to have_content(@book1.genre)
        expect(page).to have_content(@book1.available_copies)
        expect(page).to have_content(@book1.price)
        expect(page).to_not have_content("This title is currently on sale!")

        visit "/books/2"
        
        expect(page).to have_content(@book2.book_title)
        expect(page).to have_content(@book2.author)
        expect(page).to have_content(@book2.genre)
        expect(page).to have_content(@book2.available_copies)
        expect(page).to have_content(@book2.price)
        expect(page).to_not have_content("This title is currently on sale!")
        
        visit "/books/3"
        
        expect(page).to have_content(@book3.book_title)
        expect(page).to have_content(@book3.author)
        expect(page).to have_content(@book3.genre)
        expect(page).to have_content(@book3.available_copies)
        expect(page).to have_content(@book3.price)
        expect(page).to have_content("This title is currently on sale!")
        
        visit "/books/4"
        
        expect(page).to have_content(@book4.book_title)
        expect(page).to have_content(@book4.author)
        expect(page).to have_content(@book4.genre)
        expect(page).to have_content(@book4.available_copies)
        expect(page).to have_content(@book4.price)
        expect(page).to_not have_content("This title is currently on sale!")
        
        visit "/books/5"
        
        expect(page).to have_content(@book5.book_title)
        expect(page).to have_content(@book5.author)
        expect(page).to have_content(@book5.genre)
        expect(page).to have_content(@book5.available_copies)
        expect(page).to have_content(@book5.price)
        expect(page).to have_content("This title is currently on sale!")
      end
    end
  end