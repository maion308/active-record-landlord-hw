# == Schema Information
#
# Table name: apartments
#
#  id           :integer          not null, primary key
#  unit         :string
#  num_beds     :integer
#  num_baths    :integer
#  monthly_rent :integer
#  allow_pets   :boolean
#  sq_ft        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Apartment < ApplicationRecord
    has_many :tenants
    belongs_to :buildings
end
 
