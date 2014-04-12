class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.integer :fb_id
      t.timestamps
    end
  end
end
