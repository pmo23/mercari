class CreateCredits < ActiveRecord::Migration[5.0]
  def change
    create_table :credits do |t|
      t.text :token, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
