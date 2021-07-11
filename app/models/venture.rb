class Venture < ApplicationRecord
    #validates
    validates :user_id, presence: true
    validates :name, presence: true, uniqueness: true
    validates :short_description, presence: true
    validates :sector, presence: true
    validates :investment_stage, presence: true

    #associations
    belongs_to :user 
    has_one :venture_detail
    #has_one :venture_share
    #has_many :investments 
    #has_many :competitors
    #has_many :teams 
    
    after_initialize :set_defaults

    def set_defaults
        self.approval_status ||= "false"
        self.total_investors ||= 0
        self.amount_invested ||= 0
        self.logo ||= "https://picsum.photos/680/260?grayscale"
    end

end
