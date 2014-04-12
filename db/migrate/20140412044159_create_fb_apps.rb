class CreateFbApps < ActiveRecord::Migration
  def change
    create_table :fb_apps do |t|
      t.string :facebook_id
      t.timestamps
    end
  end
end
