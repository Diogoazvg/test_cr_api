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
  before_create :add_intem_cart
  belongs_to :cart
  belongs_to :medicine

  def add_intem_cart
    unless medicine.stock < quantity
      medicine.stock -= quantity
      medicine.save
      else
        raise ActiveRecord::Rollback, "Stock cannot be less than 1"
    end
  end
end
