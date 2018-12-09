class CreatePatients < ActiveRecord::Migration[5.2]

  def change

    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mr
      t.datetime :dob

      t.string :gender, default: 'female'
      t.integer :admission_id



      t.timestamps
    end

    add_foreign_key :patients, :admissions, column: :admission_id, primary_key: :id

  end

end
