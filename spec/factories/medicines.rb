FactoryBot.define do
  # number = Faker::Number.number(digits: 4)
  factory :medicine do
    name {"Aspirina"}
    value {Faker::Number.decimal(l_digits: 2)}
    quantity {2}
    stock {200}
  end
end
