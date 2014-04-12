class Notification < ActiveRecord::Base
	belongs_to :fb_app

	attr_accessor :fb_app_id, :reference
end
