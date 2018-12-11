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
    # "#{name}, #{dosage}, #{route}, q#{frequency.value}#{frequency.unit}, to #{necessity}"
    "#{name}, #{dosage}, #{route}, q#{order_frequency.value}#{order_frequency.unit}, to #{necessity}"
  end

end
