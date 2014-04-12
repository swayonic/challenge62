class UserApp < ActiveRecord::Base
	belongs_to :user
	belongs_to :fb_app
end
