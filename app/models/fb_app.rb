class FbApp < ActiveRecord::Base
	has_many :users, :through => :user_apps
	has_many :notifications

	attr_accessor :fb_app_id
end
