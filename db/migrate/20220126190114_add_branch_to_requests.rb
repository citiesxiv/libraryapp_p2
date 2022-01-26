class AddBranchToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :libName, :string
  end
end
