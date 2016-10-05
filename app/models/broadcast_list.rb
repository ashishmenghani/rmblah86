class BroadcastList < ApplicationRecord
    has_many :list_members
    validates :list_id, :list_name, :owner_jid, presence: true
    validates :list_id, uniqueness: true
    self.primary_key = 'list_id'
end
