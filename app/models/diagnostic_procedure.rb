class DiagnosticProcedure < ApplicationRecord

  belongs_to :patient

  def described_procedure
    "#{description} at #{moment.strftime("%-I:%M %p")}"
  end

end