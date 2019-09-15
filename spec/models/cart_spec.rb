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

  context 'Total cart with discount' do
    let(:cart)  { create(:cart_with_items)}
    it 'should return total cart with discount' do
      expect(cart.total_with_discount).to eq(51.2)
    end
  end

  context 'Total cart with discount other values' do
    let(:cart)  { create(:cart_with_items2)}
    it 'should return total cart with discount other values' do
      expect(cart.total_with_discount).to eq(85.6)
    end
  end

  context 'Total cart with discount other values' do
    let(:cart)  { create(:cart_with_items3)}
    it 'should return total cart with discount other values 3' do
      expect(cart.total_with_discount).to eq(102.4)
    end
  end

  context 'relationships' do
    it { is_expected.to belong_to :customer }
  end
end
