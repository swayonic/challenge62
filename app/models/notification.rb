class Notification < ActiveRecord::Base
	belongs_to :app

	attr_accessor :app_id, :reference
end
