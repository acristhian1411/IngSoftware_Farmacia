class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :sec_descrip
      t.boolean :seccion_active

      t.timestamps null: false
    end
  end
end
