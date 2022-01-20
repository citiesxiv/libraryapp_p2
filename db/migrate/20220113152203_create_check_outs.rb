class CreateCheckOuts < ActiveRecord::Migration[4.2]
  def change
    create_table :check_outs do |t|
      t.integer :book_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
