class CreateUserApps < ActiveRecord::Migration
  def change
    create_table :user_apps do |t|
      t.integer :user_id
      t.string :fb_app_id
      t.timestamps
    end
  end
end
