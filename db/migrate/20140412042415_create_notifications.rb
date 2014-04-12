class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :id
      t.integer :app_id
      t.text :reference
      t.timestamps
    end
  end
end
