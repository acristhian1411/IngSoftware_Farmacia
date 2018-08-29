class CreateCompraDetalles < ActiveRecord::Migration
  def change
    create_table :compra_detalles do |t|
      t.integer :compra_id
      t.integer :number
      t.integer :producto_id
      t.integer :cantidad
      t.decimal :precio

      t.timestamps null: false
    end
  end
end
