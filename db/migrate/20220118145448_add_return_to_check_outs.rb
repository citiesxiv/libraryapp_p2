class AddReturnToCheckOuts < ActiveRecord::Migration
  def change
    add_column :check_outs, :returnDate, :date
  end
end
