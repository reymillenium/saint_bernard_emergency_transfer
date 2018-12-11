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

      # chronic_conditions (An array of Diagnosis)
      # t.string :chronic_conditions

      # diagnoses (An array of Diagnosis)??? Difference between this and Chronic conditions???
      # t.string :diagnoses

      # treatments (An array of Treatments)
      # t.string :treatments, array: true, default: []
      # t.string :treatments


      t.timestamps
    end


    add_foreign_key :patients, :admissions, column: :admission_id, primary_key: :id

  end

end
