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

end
