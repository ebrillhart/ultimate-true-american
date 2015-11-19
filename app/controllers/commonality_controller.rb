class CommonalityController < ApplicationController
	def index
		@commonality = Commonality.all
	end
end
