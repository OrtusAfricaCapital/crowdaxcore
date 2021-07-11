class SocialMedium < ApplicationRecord
    validates :venture_id, presence: true

    #associations
    belongs_to :venture
end
