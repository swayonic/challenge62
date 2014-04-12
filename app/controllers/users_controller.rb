class UsersController < ApplicationController

	def index
		render json: User.all
	end

	def create
		# Step 1: Create User

		u = User.find_by(fb_id: params[:fb_id])
		if u.nil?
			u = User.new
			u.fb_id = params[:fb_id]
			u.name = params[:name]
			u.email = params[:email]
			u.locale = params[:lang]
			if !u.save
				render :text => 'An error occurred while creating the user.'
				return
			end
		end

		# Step 2: Create App

		a = FbApp.find_by(facebook_id: params[:app_id])
		if a.nil?
			a = FbApp.new
			a.facebook_id = params[:app_id]
			if !a.save
				render :text => 'An error occurred while creating the app.'
				return
			end
		end

		# Step 3: Create UserApp

		ua = UserApp.find_by(user_id: u.id, fb_app_id: a.id)
		if ua.nil?
			ua = UserApp.new
			ua.user_id = u.id
			ua.fb_app_id = a.id
			if !ua.save
				render :text => 'An error occurred while creating the user-app relation'
			end
		end

		render :text => 'Success'
	end
end
