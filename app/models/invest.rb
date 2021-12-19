class Invest < ApplicationRecord
    validates :user_id, presence: true
    validates :venture_id, presence: true
    validates :amount_invested, presence: true

    belongs_to :venture
    belongs_to :user

    after_create :increment_no_of_investors

    private 
    def increment_no_of_investors
        #venture = Venture.find_by(id: self.venture_id)
        
        
    end

end
