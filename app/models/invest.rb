class Invest < ApplicationRecord
    validates :user_id, presence: true
    validates :business_id, presence: true
    validates :amount_invested, presence: true
end
