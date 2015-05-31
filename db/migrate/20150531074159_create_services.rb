class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name_services
      t.string :company_price
      t.string :doctor_price
      t.date :date_in
      t.date :date_out
      t.integer :category_id
      t.timestamps null: false
     
    end
      add_foreign_key :services, :categories
  end
end
