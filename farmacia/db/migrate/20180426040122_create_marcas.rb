class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :marca_descrip
      t.boolean :marca_active

      t.timestamps null: false
    end
  end
end
