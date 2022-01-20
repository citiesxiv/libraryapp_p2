class AddCopyToCheckOuts < ActiveRecord::Migration[4.2]
  def change
    add_column :check_outs, :copy, :integer
  end
end
