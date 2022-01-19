class AddCopyToCheckOuts < ActiveRecord::Migration
  def change
    add_column :check_outs, :copy, :integer
  end
end
