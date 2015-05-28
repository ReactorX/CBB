class CreateContentClinics < ActiveRecord::Migration
  def change
    create_table :content_clinics do |t|
      t.string :name_clinic
      t.string :adress_clinic
      t.string :zip_code_clinic
      t.string :city_linic

      t.timestamps null: false
    end
  end
end
