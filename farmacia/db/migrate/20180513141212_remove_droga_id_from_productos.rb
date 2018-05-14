class RemoveDrogaIdFromProductos < ActiveRecord::Migration
  def change
  	remove_column :productos, :droga_id
  end
end
