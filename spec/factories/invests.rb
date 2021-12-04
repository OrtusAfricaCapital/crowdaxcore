FactoryBot.define do
  factory :invest do
    user_id { 1 }
    business_id { 1 }
    type_of_investment { "MyString" }
    shares_purchased { 1.5 }
    amount_invested { 1.5 }
    investing_as { "MyString" }
  end
end
