class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :codigo
      t.string :prod_descrip
      t.date :fecha_vence
      t.integer :cantidad
      t.float :precio_compra
      t.float :precio_venta
      t.boolean :prod_active
      t.references :droga, index: true, foreign_key: true
      t.references :marca, index: true, foreign_key: true
      t.references :proveedor, index: true, foreign_key: true
      t.references :seccion, index: true, foreign_key: true
      t.references :tipo_med, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
