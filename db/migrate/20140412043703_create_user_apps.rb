class CreateUserApps < ActiveRecord::Migration
  def change
    create_table :user_apps do |t|

      t.timestamps
    end
  end
end
