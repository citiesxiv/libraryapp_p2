class AddCopyToHistories < ActiveRecord::Migration[4.2]
  def change
    add_column :histories, :copy, :integer
  end
end
