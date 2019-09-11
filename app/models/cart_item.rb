# == Schema Information
#
# Table name: cart_items
#
#  id          :integer          not null, primary key
#  cart_id     :integer
#  medicine_id :integer
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CartItem < ApplicationRecord
  after_save :add_intem_cart
  belongs_to :cart
  belongs_to :medicine
end
