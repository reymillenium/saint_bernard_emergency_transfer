class CreateMedicationOrders < ActiveRecord::Migration[5.2]

  def change
    create_table :medication_orders do |t|

      t.string :name

      # USING ENUM:
      t.column :unit, :integer, default: 0

      t.decimal :dosage

      t.text :necessity

      # USING ENUM:
      t.column :route, :integer, default: 0

      t.integer :patient_id

      t.integer :order_frequency_id

      t.timestamps

    end
  end

end
