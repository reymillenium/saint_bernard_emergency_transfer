class Patient < ApplicationRecord

  # enum gender: {male: 'male', female: 'female', other: 'other'}

  # GENDER RESTRICTION
  #
  # USING ENUM:
  GENDERS = [:male, :female, :other]
  enum gender: GENDERS
  #
  #OR PLAIN STRING
  # GENDERS = [:male, :female, :other]
  # validates :gender, inclusion: {in: GENDERS}





end
