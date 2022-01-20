class AddUserEmailToCheckOuts < ActiveRecord::Migration[4.2]
  def change
    add_column :check_outs, :email, :string
  end
end
