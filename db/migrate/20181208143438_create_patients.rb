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

      t.timestamps

    end
  end

end
