FactoryBot.define do
  factory :competitor do
    venture  
      name { Faker::Company.name }
      difference { Faker::Lorem.paragraph  }
      advantage { Faker::Lorem.paragraph  }
  end
end
