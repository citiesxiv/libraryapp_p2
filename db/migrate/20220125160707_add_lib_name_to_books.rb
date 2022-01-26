class AddLibNameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :libName, :string
  end
end
