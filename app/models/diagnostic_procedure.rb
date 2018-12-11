class DiagnosticProcedure < ApplicationRecord

  belongs_to :patient


  def described_procedure
    "#{description}, at #{I18n.localize moment}"
  end

end
