class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :zip_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.text :address_line1, null: false
      t.text :address_line2
      t.string :phone_number, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
