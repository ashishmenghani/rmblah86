class ListMember < ApplicationRecord
    belongs_to :broadcast_lists, optional: true
    validates :list_id, :member_jid, presence: true
end
