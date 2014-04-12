class User < ActiveRecord::Base
	has_many :apps, :through => :user_apps

	attr_accessor :fb_id, :name, :email, :locale
end
