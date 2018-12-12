class CreateOrderFrequencies < ActiveRecord::Migration[5.2]

  def change
    create_table :order_frequencies do |t|

      t.string :value

      # USING ENUM:
      t.column :unit, :integer, default: 0
      #OR PLAIN STRING
      # t.column :unit, :string, default: :hour

      t.timestamps
    end
  end

end
