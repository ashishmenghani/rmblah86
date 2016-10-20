class AddJidToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :jid, :string
  end
end
