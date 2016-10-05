class User < ApplicationRecord
   belongs_to :firms, optional: true
   has_many   :current_chats, :dependent => :delete_all
   has_many   :open_groups, :dependent => :delete_all
   has_many   :user_relationships, :dependent => :delete_all   
   has_many   :open_lists, :dependent => :delete_all
   validates :user_id, :first_name, :last_name, :j_id, presence: true
   validates :user_id, :j_id, uniqueness: true
   self.primary_key = 'user_id'
end
