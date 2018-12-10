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





end
