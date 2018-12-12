class PatientChronicCondition < ApplicationRecord

#  Used for the chronic conditions or chronic diagnoses, of the 2nd paragraph
  belongs_to :patient
  belongs_to :diagnosis

end
