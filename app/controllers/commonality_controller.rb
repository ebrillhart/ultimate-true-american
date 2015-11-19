class CommonalityController < ApplicationController
	def index
		@commonality = Commonality.all
	end
	def random
    	offset(rand(count))
 	end
end
