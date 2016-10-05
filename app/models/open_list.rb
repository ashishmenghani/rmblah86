class OpenList < ApplicationRecord
    belongs_to :users, optional: true
    validates :jid, :list_id, presence: true
end
