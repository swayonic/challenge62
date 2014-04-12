class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.sting :fb_app_id
      t.timestamps
    end
  end
end
