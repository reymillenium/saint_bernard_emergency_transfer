class CreateAdmissionDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :admission_diagnoses do |t|

      t.integer :diagnosis_id
      t.integer :admission_id

      t.timestamps
    end
  end
end
