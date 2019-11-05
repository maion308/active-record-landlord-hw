# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  birth_date :date
#  nickname   :string
#  occupation :string
#  ssn        :integer
#  has_pets   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tenant < ApplicationRecord
    belongs_to :apartments
end
