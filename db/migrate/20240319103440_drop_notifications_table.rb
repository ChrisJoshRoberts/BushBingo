class DropNotificationsTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :notifications
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
