class AddBookTitleToCheckOuts < ActiveRecord::Migration[4.2]
  def change
    add_column :check_outs, :bookTitle, :string
  end
end
