# == Schema Information
#
# Table name: medicines
#
#  id         :integer          not null, primary key
#  name       :string
#  value      :float
#  quantity   :integer
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Medicine, type: :model do
  let(:valid_attributes) { { name: 'Aspirina', value: 10.0, quantity: 1, stock: 10 } }
  subject { Medicine.new(valid_attributes) }

  context '#total' do
    it 'multiplies' do
      expect(subject.total).to eql 10.0
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:stock) }
  end
end
