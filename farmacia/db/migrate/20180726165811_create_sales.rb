class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :number
      t.date :date
      t.integer :state
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
