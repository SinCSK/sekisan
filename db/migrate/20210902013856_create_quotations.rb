class CreateQuotations < ActiveRecord::Migration[6.0]
  def change
    create_table :quotations do |t|
      t.string :name,                  null: false
      t.integer :quantity,             null: false
      t.integer :standard,             null: false
      t.integer :price,                null: false
      t.integer :labor,                null: false
      t.references :user,              null: false, foreign_key: true
      t.references :client,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
