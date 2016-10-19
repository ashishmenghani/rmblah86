class User < ApplicationRecord
   belongs_to :accounts
   has_many   :current_chats
   has_many   :open_groups
   has_many   :user_relationships   
   has_many   :open_lists 
   validates :user_id, :first_name, :last_name, :j_id, presence: true
   validates :user_id, :j_id, uniqueness: true
   self.primary_key = 'user_id'
end
