class Quest < ApplicationRecord
  belongs_to :quest_type
  validates :name, length: { minimum: 3 }  
end
