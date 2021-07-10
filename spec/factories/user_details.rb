FactoryBot.define do
  factory :user_detail do
    user
    phonenumber {Faker::PhoneNumber.cell_phone }
    bio {Faker::Lorem.paragraph }
    date_of_birth {30.years.ago}
    country {Faker::Address.country }
    address {"katale sseguku "}
    cover_photo {"https://photos.com/1"}
    profile_photo {"https://photos.com/2"}
    website {"www.jjingokisakye.com"}
    total_amount_invested {100.00}
    companies_invested_in {22}
    investment_annual_limit {1000000}
  end
end
