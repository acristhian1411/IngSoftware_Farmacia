class CreateDrogas < ActiveRecord::Migration
  def change
    create_table :drogas do |t|
      t.string :droga_descrip
      t.boolean :droga_active

      t.timestamps null: false
    end
  end
end
