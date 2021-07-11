class VentureShare < ApplicationRecord
    validates :venture_id, presence: true
    validates :unit_share_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :overall_shares, presence: true, numericality: { greater_than_or_equal_to: 1 }
    validates :total_sold_shares, numericality: { greater_than_or_equal_to: 0 }
    validates :available_shares, numericality: { greater_than_or_equal_to: 0 }
    #associations
    belongs_to :venture
end
