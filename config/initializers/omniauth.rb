#initialization of omniauth
Rails.application.config.middleware.use OmniAuth::Builder do
	#initialization of provider(facebook keys)
	provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']	
end