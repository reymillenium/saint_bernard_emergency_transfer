class CreatePatients < ActiveRecord::Migration[5.2]

  def change

    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mr
      t.datetime :dob

      # USING ENUM:
      t.column :gender, :integer, default: 1
      #OR PLAIN STRING
      # t.column :gender, :string, default: :female

      # Admission
      t.integer :admission_id

      # An array of allergies (each Allergy has a description text field)
      # add_column :patients, :allergies, :text, array: true, default: []
      t.text :allergies, array: true, default: []

      # chronic_conditions (An array of Diagnosis)


      # medications (An array of MedicationOrders])


      # diagnostic_procedures (An array of DiagnosticProcedures]])


      # diagnoses (An array of Diagnosis)??? Difference between this and Chronic conditions???


      # treatments (An array of Treatments)












      t.timestamps
    end


    add_foreign_key :patients, :admissions, column: :admission_id, primary_key: :id

  end

end
