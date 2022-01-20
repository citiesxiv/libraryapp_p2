class AddReturnToCheckOuts < ActiveRecord::Migration[4.2]
  def change
    add_column :check_outs, :returnDate, :date
  end
end
