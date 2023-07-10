require "rails_helper"

RSpec.describe "Bookstores Show" do
  before :each do
      @bookstore1 = Bookstore.create!(name: "Golden Braid Books", city: "Salt Lake City",coffee_shop: true, parking_spots: 50, hours: "9 am - 6 pm")
      @bookstore2 = Bookstore.create!(name: "Reader's Roost", city: "Vernal", coffee_shop: true, parking_spots: 15, hours: "7 am - 5 pm")
      @bookstore3 = Bookstore.create!(name: "Brevity Books", city: "Jensen", coffee_shop: false, parking_spots: 10, hours: "8 am - 7 pm")
      @bookstore4 = Bookstore.create!(name: "A Novel Idea", city: "Roosevelt", coffee_shop: true, parking_spots: 15, hours: "8 am - 6 pm")
      @bookstore5 = Bookstore.create!(name: "Tomes & Trinkets", city: "Vernal", coffee_shop: false, parking_spots: 20, hours: "10 am - 7 pm")
  end

  it "validates parent id with data" do
    visit '/bookstores/1'
    
    expect(page).to have_content(@bookstore1.name)
    expect(page).to have_content(@bookstore1.city)
    expect(page).to have_content(@bookstore1.parking_spots)
    expect(page).to have_content(@bookstore1.hours)
    expect(page).to have_content("Enjoy a coffee")
    
    visit '/bookstores/2'
    
    expect(page).to have_content(@bookstore2.name)
    expect(page).to have_content(@bookstore2.city)
    expect(page).to have_content(@bookstore2.parking_spots)
    expect(page).to have_content(@bookstore2.hours)
    expect(page).to have_content("Enjoy a coffee")
    
    visit '/bookstores/3'
    
    expect(page).to have_content(@bookstore3.name)
    expect(page).to have_content(@bookstore3.city)
    expect(page).to have_content(@bookstore3.parking_spots)
    expect(page).to have_content(@bookstore3.hours)
    expect(page).to_not have_content("Enjoy a coffee")
    
    visit '/bookstores/4'
    
    expect(page).to have_content(@bookstore4.name)
    expect(page).to have_content(@bookstore4.city)
    expect(page).to have_content(@bookstore4.parking_spots)
    expect(page).to have_content(@bookstore4.hours)
    expect(page).to have_content("Enjoy a coffee")
    
    visit '/bookstores/5'
    
    expect(page).to have_content(@bookstore5.name)
    expect(page).to have_content(@bookstore5.city)
    expect(page).to have_content(@bookstore5.parking_spots)
    expect(page).to have_content(@bookstore5.hours)
    expect(page).to_not have_content("Enjoy a coffee")
  end
  
  it "displays a count of books associated with that individual bookstore" do
    visit '/bookstores/1'
    
    expect(page).to have_content(@bookstore1.books.size)
    
    visit '/bookstores/2'

    expect(page).to have_content(@bookstore2.books.size)
    
    visit '/bookstores/3'
    
    expect(page).to have_content(@bookstore3.books.size)
    
    visit '/bookstores/4'
    
    expect(page).to have_content(@bookstore4.books.size)
    
    visit '/bookstores/5'
    
    expect(page).to have_content(@bookstore5.books.size)
  end

  it "should have a link that takes me to the books index page" do
    visit '/bookstores/1'
    
    expect(page).to have_link("All Books")
    
    visit '/bookstores/2'

    expect(page).to have_link("All Books")
    
    visit '/bookstores/3'
    
    expect(page).to have_link("All Books")
    
    visit '/bookstores/4'
    
    expect(page).to have_link("All Books")
    
    visit '/bookstores/5'
    
    expect(page).to have_link("All Books")
  end

  it "should have a link that takes me to a page displaying the books that belong to that individual bookstore" do
    visit '/bookstores/1'
    
    expect(page).to have_link("Click to see our available books")
    
    visit '/bookstores/2'

    expect(page).to have_link("Click to see our available books")
    
    visit '/bookstores/3'
    
    expect(page).to have_link("Click to see our available books")
    
    visit '/bookstores/4'
    
    expect(page).to have_link("Click to see our available books")
    
    visit '/bookstores/5'
    
    expect(page).to have_link("Click to see our available books")
  end

  it "should have a link that takes me back to the home page" do
    visit '/bookstores/1'
    
    expect(page).to have_link("Back to Home")
    
    visit '/bookstores/2'

    expect(page).to have_link("Back to Home")
    
    visit '/bookstores/3'
    
    expect(page).to have_link("Back to Home")
    
    visit '/bookstores/4'
    
    expect(page).to have_link("Back to Home")
    
    visit '/bookstores/5'
    
    expect(page).to have_link("Back to Home")
  end

  # As a visitor
  # When I visit a parent show page
  # Then I see a link to update the parent "Update Parent"
  # When I click the link "Update Parent"
  # Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
  # When I fill out the form with updated information
  # And I click the button to submit the form
  # Then a `PATCH` request is sent to '/parents/:id',
  # the parent's info is updated,
  # and I am redirected to the Parent's Show page where I see the parent's updated info
  it "can update a bookstore from the bookstores show page" do
    visit "/bookstores/1"

    expect(page).to have_link("Update Bookstore")

    click_link("Update Bookstore")

    expect(current_path).to eq("/bookstores/1/edit")

    visit "/bookstores/1/edit"

    expect(page).to have_form
    expect(page).to have_content("Name")
    expect(page).to have_button
  end
end