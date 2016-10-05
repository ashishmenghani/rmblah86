class OpenGroup < ApplicationRecord
    belongs_to :users, optional: true
    validates :jid, :group_id, presence: true
end
