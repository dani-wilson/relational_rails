class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.boolean :on_sale
      t.string :author
      t.string :genre
      t.string :book_title
      t.integer :available_copies
      t.integer :price

      t.timestamps
    end
  end
end
