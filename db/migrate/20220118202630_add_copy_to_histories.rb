class AddCopyToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :copy, :integer
  end
end
