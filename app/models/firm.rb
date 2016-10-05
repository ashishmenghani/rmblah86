class Firm < ApplicationRecord
   has_many :users
   validates :firm_number, :firm_full_name, :firm_short_name, presence: true
   validates :firm_number, uniqueness: true
   self.primary_key = 'firm_number'
end
