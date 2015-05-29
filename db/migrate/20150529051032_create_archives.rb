class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.integer :id_appointments
      t.integer :state
      t.date :date

      t.timestamps null: false
    end
  end
end
