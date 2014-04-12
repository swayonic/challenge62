class CreateUserApps < ActiveRecord::Migration
  def change
    create_table :user_apps do |t|
      t.integer :id
      t.integer :user_id
      t.sting :fb_app_id
      t.timestamps
    end
  end
end
