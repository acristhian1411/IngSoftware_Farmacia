class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.integer :sale_id
      t.integer :number
      t.integer :producto_id
      t.integer :cantidad
      t.decimal :precio

      t.timestamps null: false
    end
  end
end
