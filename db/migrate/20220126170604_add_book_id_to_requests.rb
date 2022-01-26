class AddBookIdToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :book_id, :integer
  end
end
