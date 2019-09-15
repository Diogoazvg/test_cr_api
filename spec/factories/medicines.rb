FactoryBot.define do
  # number = Faker::Number.number(digits: 4)
  factory :medicine do
    name {"Aspirina"}
    value {Faker::Number.decimal(l_digits: 2)}
    quantity {2}
    stock {200}
    factory :medicine2 do
      name {Faker::JapaneseMedia::DragonBall.character}
      value {8}
      quantity {1000}
      stock {1000}
    end
  end
end
