class QuestStreak < ApplicationRecord
  belongs_to :daily_quest
  has_one :buff

  def name
    return '' unless daily_quest
    "#{daily_quest.name} (#{days} days)"
  end
  
end
