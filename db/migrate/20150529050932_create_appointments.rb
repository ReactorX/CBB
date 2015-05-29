class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :id_clinic
      t.integer :id_user
      t.integer :id_patient
      t.string :id_services
      t.date :data
      t.integer :id_doctor

      t.timestamps null: false
    end
  end
end
