class User < ActiveRecord::Base
	has_many :apps, :through => :user_apps
end
