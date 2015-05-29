class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :pesel
      t.string :name_patient
      t.string :firstname_patient
      t.string :adress
      t.string :city_patient
      t.string :zip_code_patient
      t.string :phone_patient
      t.integer :patient_card_nr
      t.string :ICD10code
      t.timestamps null: false
    end
  add_foreign_key :patients, :insurers
  end
end
