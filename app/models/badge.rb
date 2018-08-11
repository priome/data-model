class Badge < ApplicationRecord

  validates :name, length: { minimum: 3 }  

  rails_admin do
    edit do 
      field :name
      field :description
      field :color, :enum do
        enum do
          ['copper', 'silver', 'gold']
        end
      end 
    end
  end

end
