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
end