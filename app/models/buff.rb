class Buff < ApplicationRecord
  belongs_to :quest
  belongs_to :maintenance_quest, class_name: 'Quest'
end