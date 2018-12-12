class Patient < ApplicationRecord

  # GENDER RESTRICTION
  #
  # USING ENUM:
  GENDERS = [:male, :female, :other]
  enum gender: GENDERS
  #
  #OR PLAIN STRING
  # GENDERS = [:male, :female, :other]
  # validates :gender, inclusion: {in: GENDERS}

  has_many :patient_allergies
  has_many :allergies, through: :patient_allergies

  has_many :medications, class_name: 'MedicationOrder'

  has_many :diagnostic_procedures

  has_many :patient_treatments
  has_many :treatments, through: :patient_treatments

  # Used for the diagnosis list of the 1st paragraph
  has_one :admission

  # Used for the diagnosis list of the 2nd paragraph (chronic_conditions = chronic_diagnosis)
  has_many :patient_chronic_conditions
  has_many :chronic_conditions, through: :patient_chronic_conditions, class_name: 'Diagnosis', source: :diagnosis

  # Used for the diagnosis list of the 3rd paragraph. Diagnoses obtained on the facility
  has_many :patient_diagnoses
  has_many :diagnoses, through: :patient_diagnoses

end