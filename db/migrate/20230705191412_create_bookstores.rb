class CreateBookstores < ActiveRecord::Migration[7.0]
  def change
    create_table :bookstores do |t|
      t.string :name
      t.string :city
      t.integer :parking_spots
      t.string :hours
      t.boolean :coffee_shop

      t.timestamps
    end
  end
end
