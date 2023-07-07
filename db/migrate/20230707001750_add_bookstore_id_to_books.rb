class AddBookstoreIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :bookstore, foreign_key: true
  end
end
