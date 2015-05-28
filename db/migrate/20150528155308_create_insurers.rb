class CreateInsurers < ActiveRecord::Migration
  def change
    create_table :insurers do |t|
      t.string :name_insurer
      t.string :adress
      t.string :zip_code_insurer
      t.string :city_insurer

      t.timestamps null: false
    end
  end
end
