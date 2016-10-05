class CurrentChat < ApplicationRecord
    belongs_to :users, optional: true
    validates :jid_from, :jid_to, presence: true
end
