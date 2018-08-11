class Buff < ApplicationRecord
  belongs_to :quest_streak
  has_many :buff_effects
end