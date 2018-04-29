class CreateTipoMeds < ActiveRecord::Migration
  def change
    create_table :tipo_meds do |t|
      t.string :tipo_descrip
      t.boolean :tipo_active

      t.timestamps null: false
    end
  end
end
