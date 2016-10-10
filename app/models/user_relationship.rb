class UserRelationship < ApplicationRecord
    belongs_to :users, optional: true
    validates :jid_from, :jid_to, :relation_type, presence: true    
end
