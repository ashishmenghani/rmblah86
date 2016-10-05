class CreateOpenGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :open_groups do |t|
      t.string :jid
      t.integer :group_id

      t.timestamps
    end
  end
end
