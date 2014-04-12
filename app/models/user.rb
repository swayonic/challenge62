class User < ActiveRecord::Base
	has_many :fb_apps, :through => :user_apps
end
