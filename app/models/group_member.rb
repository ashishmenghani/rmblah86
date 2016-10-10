class GroupMember < ApplicationRecord
    belongs_to :groups, optional: true
    validates :group_id, presence: true
end
