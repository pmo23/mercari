class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :name,                 null: false
      t.text    :product_description,  null: false
      t.string  :category1,            null: false
      t.string  :category2,            null: false
      t.string  :category3,            null: false
      t.string  :brand,                null: false
      t.string  :size
      t.string  :condition,            null: false
      t.string  :postage,              null: false
      t.string  :shipping_method,      null: false
      t.string  :ship_from,            null: false
      t.string  :shipping_date,        null: false
      t.integer :price,                null: false
      t.integer :point
      t.string  :on_display
      t.string  :during_trading
      t.string  :sold_out
      t.timestamps
    end
  end
end
