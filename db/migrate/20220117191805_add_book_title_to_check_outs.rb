class AddBookTitleToCheckOuts < ActiveRecord::Migration
  def change
    add_column :check_outs, :bookTitle, :string
  end
end
