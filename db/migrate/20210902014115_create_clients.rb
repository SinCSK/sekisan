class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :company,            null: false
      t.string :name,               null: false
      t.string :email,              null: false, default: ""
      t.string :tel,                null: false
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
