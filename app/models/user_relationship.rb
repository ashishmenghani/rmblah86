class UserRelationship < ApplicationRecord
    belongs_to :users, optional: true
    validates :jid_from, :jid_to, :relationship_type, presence: true    
end
