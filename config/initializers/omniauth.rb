#initialization of omniauth
Rails.application.config.middleware.use OmniAuth::Builder do
	#initialization of provider(facebook keys)
	provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']	
end
# config.omni :facebook, "1688793201336751", "36282ebeccdb2fc08943658825f0a7e4"
# 			callback_url: "CALLBACK_URL"