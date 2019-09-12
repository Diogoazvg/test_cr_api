# == Schema Information
#
# Table name: carts
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Cart, type: :model do
  context 'Total cart' do
    let(:cart_item)  { create(:cart_item)}
    it 'should return total cart' do
      expect(cart_item.cart.total).to eq(cart_item.cart.total)
    end
  end

  context 'relationships' do
    it { is_expected.to belong_to :customer }
  end
end
