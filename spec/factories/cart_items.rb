FactoryBot.define do
  factory :customer_item, class: Customer do
    name { "john" }
    id {1}
  end

  factory :cart, class: Cart do
    customer_id {1}
    # id {2}
  end

  factory :medicine, class: Medicine do
    name {"Aspirina"}
    value {5.00}
    quantity {8}
    stock {122}
    # id {1}
  end

  factory :cart_item, class: CartItem do
    medicine_id {1}
    cart_id {1}
    quantity {nil}
    medicine
    cart
  end
end
