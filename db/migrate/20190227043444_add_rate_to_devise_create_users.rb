class AddRateToDeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string,       null: false, default: ""
    add_column :users, :last_name, :string,       null: false, default: ""
    add_column :users, :first_name, :string,      null: false, default: ""
    add_column :users, :last_name_kana, :string,  null: false, default: ""
    add_column :users, :first_name_kana, :string, null: false, default: ""
    add_column :users, :date_of_birth, :string,    null: false, default: ""
  end
end
