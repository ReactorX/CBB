class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :pwz_number
      t.string :name
      t.string :surname

      t.timestamps null: false
    end
  end
end
