# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
  has_one :cart
  def name_titleize
    name.titleize
  end
end
