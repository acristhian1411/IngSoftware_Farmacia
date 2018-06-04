class DeleteTableDrogasProductos < ActiveRecord::Migration
  def change
  	drop_table :drogas_productos
  end
end
