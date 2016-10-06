class Firm < ApplicationRecord
   has_many :users, :foreign_key => "firm_number", :dependent => :delete_all
   validates :firm_number, :firm_full_name, :firm_short_name, presence: true
   validates :firm_number, uniqueness: true
   self.primary_key = 'firm_number'
end
