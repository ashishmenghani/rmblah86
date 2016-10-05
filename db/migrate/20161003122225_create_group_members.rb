class CreateGroupMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_members do |t|
      t.integer :group_id
      t.string :member_jid
      t.boolean :is_admin

      t.timestamps
    end
  end
end
