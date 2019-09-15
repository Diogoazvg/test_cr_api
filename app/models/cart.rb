# == Schema Information
#
# Table name: carts
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cart < ApplicationRecord
  belongs_to :customer
  has_many :cart_items

  def total
    total = []
    cart_items.each do |item|
      total << item.quantity * item.medicine.value
    end
    total.sum
  end

  def total_with_discount
    quantity = []
    value = []
    difference = []
    cart_items.each do |item|
      quantity << item.quantity
      value << item.medicine.value * item.quantity
      difference << item.medicine.value if item.quantity > 1
    end

    group = quantity.sum / 5
    rest_group = quantity.sum % 5
    rest = rest_group % 2

    case
    when value.count == 1
      percent_group = 1
    when value.count == 2
      percent_group = 0.05
    when value.count == 3
      percent_group = 0.1
    when value.count == 4
      percent_group = 0.2
    when value.count >= 5 && rest == 0
      percent_group = 0.25
      twenty_five = 1
    when value.count >= 5 && rest > 0
      percent_group = 0.2
      twenty = 1
    end

    case
    when rest_group == 1
      percent_rest = 1
    when rest_group == 2
      percent_rest = 0.05
    when rest_group == 3
      percent_rest = 0.1
    when rest_group == 4
      percent_rest = 0.2
    else
      percent_rest = 1
    end

    if twenty_five
      discount_group_1 = value.first(group*5).sum - (percent_group * value.first(group*5).sum)
      discount_rest_1 = value.last(rest_group).sum - (percent_rest * value.last(rest_group).sum)
      discount = discount_group_1 + discount_rest_1
    elsif twenty
      discount_group_1 = value.sum - (percent_group * value.sum)
    end
  end
end
