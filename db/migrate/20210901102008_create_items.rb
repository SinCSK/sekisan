class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,                 null: false
      t.string :standard,             null: false
      t.string :unit,                 null: false
      t.string :unit_price,           null: false
      t.string :unit_labor,           null: false
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
