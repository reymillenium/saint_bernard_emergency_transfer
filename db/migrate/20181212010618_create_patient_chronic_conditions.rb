class CreatePatientChronicConditions < ActiveRecord::Migration[5.2]
  def change

    # Used for the patient_chronic conditions or chronic diagnoses, of the 2nd paragraph
    create_table :patient_chronic_conditions do |t|

      t.integer :patient_id
      t.integer :diagnosis_id

      t.timestamps
    end
  end
end
