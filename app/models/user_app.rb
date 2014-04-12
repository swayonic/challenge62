class UserApp < ActiveRecord::Base
	belongs_to :user
	belongs_to :app

	attr_accessor :user_id, :app_id
end
