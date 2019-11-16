class Apartment < ApplicationRecord
    has_many :tenants
    belongs_to :buildings
end