class QuoteController < ApplicationController
	before_action :is_authenticated?
def index
		@quote = quote.all
	end
 def show
  	# show quote stuff for turn
  end
end