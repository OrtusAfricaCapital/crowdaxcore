class Invest < ApplicationRecord
    validates :user_id, presence: true
    validates :venture_id, presence: true
    validates :amount_invested, presence: true


    belongs_to :venture
    belongs_to :user
end
