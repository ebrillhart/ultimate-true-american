class FbookauthController < ApplicationController
	def callback
		provider_user = request.env['omniauth.auth']
	  #find create a user
	  	user = User.find_or_create_by(provider_id: provider_user['uid'], provider: params[:provider]) do |u|
	      u.provider_hash = provider_user['credentials']['token']
	      u.username = provider_user['info']['name']
	      u.email = provider_user['info']['email']
	      u.password = u.password_confirmation = SecureRandom.urlsafe_base64(n=6)
	    end
	    #store user inside of session
    	session[:user_id] = user.id
    	redirect_to profile_path user
	end

	def failure 
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end
end
