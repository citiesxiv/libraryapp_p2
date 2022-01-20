class AddDateToCheckOuts < ActiveRecord::Migration[4.2]
  def change
    add_column :check_outs, :checkout_date, :date
  end
end
