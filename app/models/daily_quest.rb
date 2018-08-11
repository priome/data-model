class DailyQuest < ApplicationRecord
  validates :name, length: { minimum: 3 }  
  has_one :quest_streak
end
