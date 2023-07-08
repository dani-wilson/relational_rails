require "rails_helper"

RSpec.describe "Bookstores Index" do
  before :each do
      @bookstore1 = Bookstore.create!(name: "Golden Braid Books", city: "Salt Lake City",coffee_shop: true, parking_spots: 50, hours: "9 am - 6 pm")
      @bookstore2 = Bookstore.create!(name: "Reader's Roost", city: "Vernal", coffee_shop: true, parking_spots: 15, hours: "7 am - 5 pm")
      @bookstore3 = Bookstore.create!(name: "Brevity Books", city: "Jensen", coffee_shop: false, parking_spots: 10, hours: "8 am - 7 pm")
      @bookstore4 = Bookstore.create!(name: "A Novel Idea", city: "Roosevelt", coffee_shop: true, parking_spots: 15, hours: "8 am - 6 pm")
      @bookstore5 = Bookstore.create!(name: "Tomes & Trinkets", city: "Vernal", coffee_shop: false, parking_spots: 20, hours: "10 am - 7 pm")
  end

  describe "/parent index" do 
    it "should show each bookstore on the bookstore index page" do
      visit '/bookstores'
      
      expect(page).to have_content(@bookstore1.name)
      expect(page).to have_content(@bookstore2.name)
      expect(page).to have_content(@bookstore3.name)
      expect(page).to have_content(@bookstore4.name)
      expect(page).to have_content(@bookstore5.name)
    end
    
    it "should organize records by creation time as well as display the time it was created" do
      visit '/bookstores'
      
      expect(page).to have_content(@bookstore1.created_at)
      expect(page).to have_content(@bookstore2.created_at)
      expect(page).to have_content(@bookstore3.created_at)
      expect(page).to have_content(@bookstore4.created_at)
      expect(page).to have_content(@bookstore5.created_at)
    end

    it "should have a link that takes me to the books index page" do
      visit '/'

      expect(page).to have_link('Book Index')
    end
  end
end