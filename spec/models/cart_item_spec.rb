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

require 'rails_helper'

RSpec.describe CartItem, type: :model do
  context 'Item with stock positive' do
    let(:cart_item)  { build(:cart_item)}
    it 'save item to cart' do
      expect(cart_item.save).to eq(true)
    end
  end

  context 'Item with stock negative' do
    let(:cart_item)  { build(:cart_item_bigger_than_stock)}
    it 'dont save item to cart' do
      expect(cart_item.save).to eq(nil)
    end
  end

  context 'relationships' do
    it { is_expected.to belong_to :cart }
    it { is_expected.to belong_to :medicine }
  end
end
