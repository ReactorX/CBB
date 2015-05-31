class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :content_clinic_id
      t.integer :user_id
      t.integer :patient_id
      t.string :service_id
      t.date :data
      t.integer :doctor_id
      t.timestamps null: false
    end
    add_foreign_key :appointments, :content_clinics
    add_foreign_key :appointments, :users
    add_foreign_key :appointments, :patients

    add_foreign_key :appointments, :doctors
  end
end
