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

  has_one :admission

  has_many :patient_allergies
  has_many :allergies, through: :patient_allergies


  has_many :patient_diagnoses
  has_many :chronic_conditions, through: :patient_diagnoses, class_name: 'Diagnosis'

  has_many :medications, class_name: 'MedicationOrder'

  has_many :diagnostic_procedures

  has_many :diagnoses, through: :admissions


  has_many :patient_treatments
  has_many :treatments, through: :patient_treatments

end
