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

  factory :cart_item_3, class: CartItem do
    quantity {2}
  end

  factory :cart_item_2, class: CartItem do
    quantity {1}
    # association :medicine, factory: :medicine2
    # association :cart, factory: :cart2, strategy: :build
  end

  factory :cart_item_4, class: CartItem do
    quantity {2}
    # association :medicine, factory: :medicine2
    # association :cart, factory: :cart2, strategy: :build
  end
end
