class Venture < ApplicationRecord
    #validates
    validates :user_id, presence: true
    validates :name, presence: true, uniqueness: true
    validates :short_description, presence: true
    validates :sector, presence: true
   # validates :investment_stage, presence: true

    #associations
     belongs_to :user 
     has_one :venture_detail
     has_one :venture_share
    #has_many :investments 
     has_many :competitors
     has_many :teams 
     has_many :invests 

    after_initialize :set_defaults

    def set_defaults
        self.initial_investing_date ||= Time.now if new_record?
        self.last_investing_date ||= Time.now + 5.month if new_record?
        self.investment_stage ||= "Pre-Seed Stage" if new_record?
        self.approval_status ||= "false" if new_record?
        self.total_investors ||= 0  if new_record?
        self.total_investors ||= 0  if new_record?
        self.invests_count ||= 0 if new_record?
        self.logo ||= "https://picsum.photos/500/500" if new_record?
        self.feature_image ||= "https://picsum.photos/640/360" if new_record?
        self.investment_amount_targetted ||= 1000 if new_record?
    end

end
