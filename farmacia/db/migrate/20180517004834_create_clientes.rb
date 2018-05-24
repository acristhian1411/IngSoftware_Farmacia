class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :ruc
      t.string :direccion
      t.integer :telefono
      t.boolean :cliente_active

      t.timestamps null: false
    end
  end
end
