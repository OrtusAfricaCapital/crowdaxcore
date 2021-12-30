FactoryBot.define do
  factory :venture do
      user 
      name {Faker::Name.unique.name}
      short_description {"software company"}
      logo {Faker::Company.logo}
      sector {Faker::Company.industry}
      investment_stage {"Angel"}
      total_investors {20}
      amount_invested {100.20} 
      initial_investing_date {2.months.ago}
      last_investing_date {1.days.ago}
      minimum_investment_amount {10}
      activation_status {"active"}
      approval_status {"approved"} 
      approved_date {2.months.ago}
      traction {Faker::Lorem.paragraph(sentence_count: 3)}
      location {Faker::Address.city}
      referred_by {Faker::Company.name}
      pitchdeck {Faker::Internet.url}
      investment_amount_targetted {Faker::Internet.url}
      feature_image {Faker::Company.logo}
      amount_pledged {100.20} 
      total_competitors {20}
      invests_count {20}

  end
end
