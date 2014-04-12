class UsersController < ApplicationController

	def index
		render json: User.all
	end

	def create
		# Step 1: Create User

		if !u = User.find_by(fb_id: params[:fb_id])
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

		if !a = FbApp.find_by(facebook_id: params[:app_id])
			a = FbApp.new
			a.facebook_id = params[:app_id]
			if !a.save
				render :text => 'An error occurred while creating the app.'
				return
			end
		end

		# Step 3: Create UserApp

		if !ua = UserApp.find_by(user_id: u.id, app_id: a.id)
			ua = UserApp.new
			ua.user_id = u.id
			ua.app_id = a.id
			if !ua.save
				render :text => 'An error occurred while creating the user-app relation'
			end
		end

		render :text => 'Success'
	end
end
