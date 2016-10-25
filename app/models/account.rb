class Account < ApplicationRecord
     has_one   :user, :foreign_key => "j_id"
     validates :phone_number, :country_code, :email, :name, presence: true
     validates :email, :jid, uniqueness: true
     validates_format_of :email, :with =>  /.+@.+\..+/i, :message => "Email doesnot seem to be valid"
     validates_length_of :password, :minimum => 7, :maximum => 15,  :message => "Password has to be between 7 and 15 characters"
     validates_length_of :phone_number, :minimum => 10, :maximum => 10, :message => "Phone number has to be 10 digits" 
     has_secure_password
end
