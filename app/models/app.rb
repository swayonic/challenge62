class App < ActiveRecord::Base
	has_many :users, :through => :user_apps
	has_many :notifications
end