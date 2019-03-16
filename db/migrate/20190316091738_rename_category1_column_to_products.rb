class RenameCategory1ColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :category1, :category1_id
    rename_column :products, :category2, :category2_id
    rename_column :products, :category3, :category3_id
  end
end
