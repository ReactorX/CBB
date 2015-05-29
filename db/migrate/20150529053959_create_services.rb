class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name_services
      t.string :company_price
      t.string :doctor_price
      t.date :date_in
      t.date :date_out

      t.timestamps null: false
    end
  end
end
