class AddLibBranchToCheckOuts < ActiveRecord::Migration[5.2]
  def change
    add_column :check_outs, :libName, :string
  end
end
