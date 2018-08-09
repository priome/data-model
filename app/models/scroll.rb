class Scroll < ApplicationRecord
  validates :name, length: { minimum: 3 }  
end
