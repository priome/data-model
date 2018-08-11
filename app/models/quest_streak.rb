class QuestStreak < ApplicationRecord
  belongs_to :daily_quest
  has_one :buff

  def name
    "#{daily_quest.name} (#{days} days)"
  end
  
end
