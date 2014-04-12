class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :users_id
      t.string :name
      t.string :email
      t.string :locale
      t.timestamps
    end
  end
end
