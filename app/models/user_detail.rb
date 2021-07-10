class UserDetail < ApplicationRecord
      #validatons
      validates :user_id, presence: true
      validates :country, presence: true
      
      #associations
      belongs_to :user 
  
end
