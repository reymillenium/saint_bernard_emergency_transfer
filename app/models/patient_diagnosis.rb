class PatientDiagnosis < ApplicationRecord

  # Used for the diagnosis list in the 3rd paragraph
  belongs_to :patient
  belongs_to :diagnosis

end
