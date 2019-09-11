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
  context 'titleize' do
    let(:customer)  { build(:random_customer)}
    it 'should return name titleize' do
      puts "Name returned in name_titleize: #{customer.name_titleize}"
      expect(customer.name_titleize).to eq(customer.name.titleize)
    end
  end

  context 'relationships' do
    it { is_expected.to have_one :cart }
  end
end
