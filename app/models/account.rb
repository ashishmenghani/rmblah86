class Account < ApplicationRecord
     has_one   :user, :foreign_key => "j_id"
     validates :phone_number, :country_code, :email, :name, presence: true
     validates :email, :jid, uniqueness: true    
     has_secure_password
end
