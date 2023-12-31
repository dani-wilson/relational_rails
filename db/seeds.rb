# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    Book.destroy_all
    Bookstore.destroy_all

    @gbb = Bookstore.create!(name: "Golden Braid Books", city: "Salt Lake City",coffee_shop: true, parking_spots: 50, hours: "9 am - 6 pm")
    @rr = Bookstore.create!(name: "Reader's Roost", city: "Vernal", coffee_shop: true, parking_spots: 15, hours: "7 am - 5 pm")
    @bb = Bookstore.create!(name: "Brevity Books", city: "Jensen", coffee_shop: false, parking_spots: 10, hours: "8 am - 7 pm")
    @ni = Bookstore.create!(name: "A Novel Idea", city: "Roosevelt", coffee_shop: true, parking_spots: 15, hours: "8 am - 6 pm")
    @tnt = Bookstore.create!(name: "Tomes & Trinkets", city: "Vernal", coffee_shop: false, parking_spots: 20, hours: "10 am - 7 pm")


    @gbb.books.create!(book_title: "Of Mice and Men", author: "John Steinbeck", genre: "social realism", on_sale: false, available_copies: 1, price: 15.00, bookstore_id: 1)
    @gbb.books.create!(book_title: "Every Summer After", author: "Carley Fortune", genre: "romance", on_sale: false, available_copies: 3, price: 25.00, bookstore_id: 1)
    @gbb.books.create!(book_title: "Gallant", author: "V.E. Schwab", genre: "fantasy", on_sale: true, available_copies: 5, price: 25.00, bookstore_id: 1)

    @rr.books.create!(book_title: "Words of Radiance", author: "Brandon Sanderson", genre: "fantasy", on_sale: false, available_copies: 10, price: 45.00, bookstore_id: 2)
    @rr.books.create!(book_title: "The Silent Patient", author: "Alex Michaelides", genre: "psychological thriller", on_sale: true, available_copies: 4, price: 16.00, bookstore_id: 2)
    
    @bb.books.create!(book_title: "The Last Russian Doll", author: "Kristen Loesch", genre: "historical fiction", on_sale: true, available_copies: 2, price: 12.00, bookstore_id: 3)
    @bb.books.create!(book_title: "Dune", author: "Frank Herbert", genre: "sci-fi", on_sale: false, available_copies: 1, price: 20.00, bookstore_id: 3)
    
    @ni.books.create!(book_title: "The Importance of Being Ernest", author: "Oscar Wilde", genre: "comedy", on_sale: true, available_copies: 2, price: 7.00, bookstore_id: 4)
    @ni.books.create!(book_title: "Walden", author: "Henry David Thoreau", genre: "memoir", on_sale: true, available_copies: 3, price: 5.00, bookstore_id: 4)
    @ni.books.create!(book_title: "Dune", author: "Frank Herbert", genre: "sci-fi", on_sale: false, available_copies: 1, price: 20.00, bookstore_id: 4)

    @tnt.books.create!(book_title: "The Practical Art of Divine Magic", author: "Patrick Dunn", genre: "religion & spirituality", on_sale: false, available_copies: 1, price: 13.00, bookstore_id: 5)
    @tnt.books.create!(book_title: "Karma: A Yogi's Guide to Crafting Your Destiny", author: "Sadhguru", genre: "religion & spirituality", on_sale: false, available_copies: 1, price: 10.00, bookstore_id: 5)