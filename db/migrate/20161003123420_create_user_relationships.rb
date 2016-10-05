class CreateUserRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_relationships do |t|
      t.string :jid_from
      t.string :jid_to
      t.integer :relation_type

      t.timestamps
    end
  end
end
