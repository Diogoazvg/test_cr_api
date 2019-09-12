FactoryBot.define do
  # number = Faker::Number.number(digits: 4)

  factory :cart_item, class: CartItem do
    quantity {Faker::Number.within(range: 1..200)}
    medicine
    cart
  end

  factory :cart_item_bigger_than_stock, class: CartItem do
    quantity {Faker::Number.within(range: 201..9999)}
    medicine
    cart
  end
end
