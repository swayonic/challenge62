class UsersController < ApplicationController

	def index
	end

	def new
		if !u = User.find_by_fb_id(params[:fb_id])
			u = User.new
			u.fb_id = params[:fb_id]
			u.name = params[:name]
			u.email = params[:email]
			u.lang = params[:lang]
			if !u.save
				render :text => 'An error occurred while creating the user.'
				return
			end
		end

		if !au = AppUser.find_by_user_id_and_app_id(u.id, params[:app_id])
			au = AppUser.new
			au.user_id = u.id
			au.app_id = params[:app_id]
			if !au.save
				render :text => 'An error occurred while creating the user-app relation'
			end
		end

		render :text => 'Success'
	end
end
