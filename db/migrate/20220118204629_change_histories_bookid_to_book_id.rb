class ChangeHistoriesBookidToBookId < ActiveRecord::Migration[4.2]
  def change
    rename_column :histories, :bookid, :book_id
  end
end
