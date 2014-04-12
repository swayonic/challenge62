class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :fb_id
      t.string :name
      t.string :email
      t.string :locale
      t.timestamps
    end
  end
end
