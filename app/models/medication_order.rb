class MedicationOrder < ApplicationRecord

  # UNIT RESTRICTION
  #
  # USING ENUM:
  MassUnit = [:mg]
  enum unit: MassUnit
  #
  #OR PLAIN STRING
  # MassUnit = [:mg]
  # validates :unit, inclusion: {in: MassUnit}


  # ROUTE RESTRICTION
  #
  # USING ENUM:
  MedicationRoute = [:PO, :IM, :SC]
  enum route: MedicationRoute
  #
  #OR PLAIN STRING
  # MedicationRoute = [:PO, :IM, :SC]
  # validates :route, inclusion: {in: MedicationRoute}

  belongs_to :patient

  belongs_to :order_frequency


  def detailed_description
    "#{name} #{dosage.round}#{unit} #{route} q#{order_frequency.value}#{order_frequency.unit === 'hour' ? 'hr' : order_frequency.unit} to #{necessity}"
  end

end
