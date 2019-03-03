class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :name,                 null: false
      t.text    :product_description,  null: false
      t.string  :category1,            null: false
      t.string  :category2
      t.string  :category3
      t.string  :brand
      t.string  :size
      t.string  :condition,            null: false
      t.string  :postage,              null: false
      t.string  :shipping_method
      t.string  :ship_from,            null: false
      t.string  :shipping_date,        null: false
      t.integer :price,                null: false
      t.integer :point
      t.string  :image
      t.integer :sales_condition,      null: false
      t.references :user,              foreign_key: true
      t.timestamps
    end
  end
end
