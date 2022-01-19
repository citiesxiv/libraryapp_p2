class ChangeHistoriesBookidToBookId < ActiveRecord::Migration
  def change
    rename_column :histories, :bookid, :book_id
  end
end
