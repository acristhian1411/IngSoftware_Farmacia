class RemoveProductoDrogas < ActiveRecord::Migration
  def change
  	drop_table :producto_drogas
  end
end
