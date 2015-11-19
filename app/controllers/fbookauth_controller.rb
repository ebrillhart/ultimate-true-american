class FbookauthController < ApplicationController
	def callback
		provider_user = request.env['omniauth.auth']
		#render json: provider_user
		# find or create user
		user = User.find_or_create_by(provider_id: provider_user['uid'], provider: params[:provider])
		do |u| 
			u.provider_hash = provider_user['credentials']['token']
			u.name = provider_user['info']['name']
			u.email = provider['info']['email']
	end

	 #assign session
	 session[:user_id] = user.id
	 redirect_to root_path
	end

	def failure 
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

end
