class Group < ApplicationRecord
    has_many :group_members, :dependent => :delete_all
    validates :group_id, :group_name, presence: true
    validates :group_id, uniqueness: true
    self.primary_key = 'group_id'
end
