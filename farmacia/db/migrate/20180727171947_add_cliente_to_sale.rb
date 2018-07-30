class AddClienteToSale < ActiveRecord::Migration
  def change
  	add_column :sales, :cliente_id, :integer
  end
end
