class BuffEffect < ApplicationRecord

  belongs_to :buff
  belongs_to :effect

  def name
    "#{effect.name} +#{amount}"
  end

end