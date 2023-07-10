require "rails_helper"

RSpec.describe Bookstore, type: :model do
  before :each do
    @bookstore1 = Bookstore.create!(name: "Golden Braid Books", city: "Salt Lake City",coffee_shop: true, parking_spots: 50, hours: "9 am - 6 pm")
    @bookstore2 = Bookstore.create!(name: "Reader's Roost", city: "Vernal", coffee_shop: true, parking_spots: 15, hours: "7 am - 5 pm")
    @bookstore3 = Bookstore.create!(name: "Brevity Books", city: "Jensen", coffee_shop: false, parking_spots: 10, hours: "8 am - 7 pm")
    @bookstore4 = Bookstore.create!(name: "A Novel Idea", city: "Roosevelt", coffee_shop: true, parking_spots: 15, hours: "8 am - 6 pm")
    @bookstore5 = Bookstore.create!(name: "Tomes & Trinkets", city: "Vernal", coffee_shop: false, parking_spots: 20, hours: "10 am - 7 pm")
  end
  
  describe 'relationships' do
  it {should have_many :books}
  end
end