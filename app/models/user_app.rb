class UserApp < ActiveRecord::Base
	belongs_to :user
	belongs_to :fb_app

	attr_accessor :user_id, :fb_app_id
end
