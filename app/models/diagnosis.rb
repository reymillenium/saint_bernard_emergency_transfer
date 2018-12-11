class Diagnosis < ApplicationRecord

  def described_code
    "#{description} (#{code})"
  end


end
