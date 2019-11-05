# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  address    :string
#  num_floors :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Building < ApplicationRecord
    has_many :apartments
end
