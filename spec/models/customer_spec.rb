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
  context 'relationships' do
    it { is_expected.to have_many :carts }
  end
end
