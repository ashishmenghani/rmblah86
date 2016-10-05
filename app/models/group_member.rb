class GroupMember < ApplicationRecord
    belongs_to :groups, optional: true
    validates :group_id, :group_name, :is_admin, presence: true
end
