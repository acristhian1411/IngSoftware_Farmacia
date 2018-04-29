class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :ruc
      t.string :razon_social
      t.string :direccion
      t.string :telefono
      t.string :email
      t.boolean :prov_active

      t.timestamps null: false
    end
  end
end
