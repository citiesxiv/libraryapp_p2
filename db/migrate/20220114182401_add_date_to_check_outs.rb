class AddDateToCheckOuts < ActiveRecord::Migration
  def change
    add_column :check_outs, :checkout_date, :date
  end
end
