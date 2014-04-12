class NotificationsController < ApplicationController

	def create
		a = FbApp.find(facebook_id: params[:app_id])
		# TODO: Create notification
		for u in a.users
			# TODO: 
			#url = URI.parse('https://graph.facebook.com/' + u.fb_id + '/notifications?acces_token=' + a.facebook_id + '&template=' + params[:message] + '&href=' + <<redirect/...>> + '&ref=' + n.reference)
		end
	end
end
