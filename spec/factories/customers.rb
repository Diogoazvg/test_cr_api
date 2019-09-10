FactoryBot.define do
  factory :customer do
    name { "john" }
  end

  factory :random_customer, class: Customer do
    name { Faker::DcComics.hero.downcase }
  end
end
