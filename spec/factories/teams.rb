FactoryBot.define do
  factory :team do
    venture
    name { Faker::Team.name }
    role { Faker::Book.title  }
    gender { Faker::Gender.binary_type  }
    bio { Faker::Lorem.paragraph  }
    
  end
end
