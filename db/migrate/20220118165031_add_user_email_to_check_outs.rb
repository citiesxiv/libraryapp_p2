class AddUserEmailToCheckOuts < ActiveRecord::Migration
  def change
    add_column :check_outs, :email, :string
  end
end
