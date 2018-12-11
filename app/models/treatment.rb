class Treatment < ApplicationRecord

  def described_necessity
    "#{description} to #{necessity}"
  end

end
