class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :branchName
      t.string :address
      t.string :phoneNum

      t.timestamps
    end
  end
end
