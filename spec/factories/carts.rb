FactoryBot.define do
  factory :cart do
    customer
  end

  factory :cart_with_items, class: Cart do
    customer
    after(:create) do |cart_with_items|
        create_list(:medicine2, 3)
          lasts3 = Medicine.last(3)
          lasts3.each do |last|
          create(:cart_item_3, cart_id: Cart.last.id, medicine_id: last.id)
        end
        create_list(:medicine2, 2)
          lasts2 = Medicine.last(2)
          lasts2.each do |last|
          create(:cart_item_2, cart_id: Cart.last.id, medicine_id: last.id)
        end
    end
  end

  factory :cart_with_items2, class: Cart do
    customer
    after(:create) do |cart_with_items2|
        create_list(:medicine2, 14)
          lasts2 = Medicine.last(14)
          lasts2.each do |last|
          create(:cart_item_2, cart_id: Cart.last.id, medicine_id: last.id)
        end
    end
  end

  factory :cart_with_items3, class: Cart do
      customer
      after(:create) do |cart_with_items3|
          create_list(:medicine2, 8)
            lasts2 = Medicine.last(8)
            lasts2.each do |last|
            create(:cart_item_4, cart_id: Cart.last.id, medicine_id: last.id)
          end
      end
  end
end