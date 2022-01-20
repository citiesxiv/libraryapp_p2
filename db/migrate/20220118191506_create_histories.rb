class CreateHistories < ActiveRecord::Migration[4.2]
  def change
    create_table :histories do |t|
      t.integer :bookid
      t.string :email
      t.date :chkDate
      t.date :returnedOn

      t.timestamps null: false
    end
  end
end
