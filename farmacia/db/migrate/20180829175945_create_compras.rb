class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :number
      t.date :date
      t.integer :state
      t.integer :user_id
      t.integer :proveedor_id

      t.timestamps null: false
    end
  end
end
