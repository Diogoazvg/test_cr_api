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

class Medicine < ApplicationRecord

  validates :value, presence: true
  validates :quantity, presence: true
  def total
    value * quantity
  end
end
