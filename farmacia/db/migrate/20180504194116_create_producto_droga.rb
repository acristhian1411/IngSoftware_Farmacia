class CreateProductoDroga < ActiveRecord::Migration
  def change
    create_table :producto_drogas, :id => false do |t|
    	t.references :producto
	    t.references :droga
    end
    add_index :producto_drogas, :producto_id
    add_index :producto_drogas, :droga_id
  end
end
