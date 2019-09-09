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
  context 'relationships' do
    it { is_expected.to belong_to :customer }
  end
end
