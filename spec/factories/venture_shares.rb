FactoryBot.define do
  factory :venture_share do
    venture
    unit_share_value {50} 
    overall_shares {10000}
    total_sold_shares {1000} 
    available_shares {9000}
    valuation_cap {0}

  end
end
