class CreateMedicationOrdersToPatients < ActiveRecord::Migration[5.2]

  def change
    create_table :medication_orders_to_patients do |t|

      t.integer :medication_id
      t.integer :patient_id

      t.timestamps

    end
  end

end