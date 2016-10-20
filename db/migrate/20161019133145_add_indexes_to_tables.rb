class AddIndexesToTables < ActiveRecord::Migration[5.0]
  def change
    add_index :user_relationships, :jid_from
    add_index :open_groups, :jid
    add_index :open_lists, :jid 
  end
end
