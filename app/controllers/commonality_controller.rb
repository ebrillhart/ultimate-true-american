class CommonalityController < ApplicationController
	before_action :is_authenticated?
	def index
		@commonality = Commonality.all
	end
	def random
    	offset(rand(count))
 	end
end