class CreateDrogasXProductos < ActiveRecord::Migration
  def change
    create_table :drogas_x_productos do |t|
      t.references :droga, index: true, foreign_key: true
      t.references :producto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
