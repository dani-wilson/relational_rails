class AddBookIdToBookstores < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookstores, :book, foreign_key: true
  end
end
