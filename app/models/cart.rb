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
end
