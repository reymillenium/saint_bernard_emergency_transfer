class CreatePatientDiagnoses < ActiveRecord::Migration[5.2]
  def change

    # Used for the diagnosis list of the 3rd paragraph. Diagnoses obtained on the facility
    create_table :patient_diagnoses do |t|

      t.integer :patient_id
      t.integer :diagnosis_id

      t.timestamps
    end
  end
end
