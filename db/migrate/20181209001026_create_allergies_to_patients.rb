class CreateAllergiesToPatients < ActiveRecord::Migration[5.2]

  def change

    create_table :allergies_to_patients do |t|
      t.integer :allergy_id
      t.integer :patient_id

      t.timestamps
    end

  end

end
