class Competitor < ApplicationRecord
    validates :venture_id, presence: true
    validates :name, presence: true
    validates :difference, presence: true

    #associations
    belongs_to :venture
end
