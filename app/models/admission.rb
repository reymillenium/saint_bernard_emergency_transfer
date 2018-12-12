class Admission < ApplicationRecord

  belongs_to :patient

  has_many :admission_diagnoses
  has_many :diagnoses, through: :admission_diagnoses

  has_many :admission_symptoms
  has_many :symptoms, through: :admission_symptoms

  has_many :observations

end
