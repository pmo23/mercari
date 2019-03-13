class CreateCategory3s < ActiveRecord::Migration[5.0]
  def change
    create_table :category3s do |t|
      t.string :name
      t.references :category2s, foreign_key: true
      t.timestamps
    end
  end
end
