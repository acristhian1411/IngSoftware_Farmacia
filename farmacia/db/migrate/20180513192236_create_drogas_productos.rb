class CreateDrogasProductos < ActiveRecord::Migration
  def change
    create_table :drogas_productos, :id => false do |t|
    	t.references :droga
      	t.references :producto
    end
    add_index :drogas_productos, :droga_id
    add_index :drogas_productos, :producto_id
  end
end
