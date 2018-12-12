class OrderFrequency < ApplicationRecord

  # UNIT RESTRICTION
  #
  # USING ENUM:
  FrequencyUnit = [:hour]
  enum unit: FrequencyUnit
  #
  #OR PLAIN STRING
  # FrequencyUnit = [:hour]
  # validates :unit, inclusion: {in: FrequencyUnit}

end
