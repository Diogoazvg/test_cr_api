FactoryBot.define do
  factory :customer do
    name { "john" }
  end

  factory :random_customer do
    name { Faker::DcComics.hero }
  end
end
