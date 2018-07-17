class Quest < ApplicationRecord
  belongs_to :quest_type
  has_one :buff
  validates :name, length: { minimum: 3 }  
end
