# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Customer, type: :model do
  # subject { Customer.new(titleize) }

  context 'titleize' do
    let(:customer)  { build(:customer)}
    it 'should return name titleize' do
    puts customer.name
      expect(customer.name_titleize).to eq('John')
    end
  end

  context 'relationships' do
    it { is_expected.to have_many :carts }
  end
end
