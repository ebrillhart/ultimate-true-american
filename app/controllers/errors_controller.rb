class ErrorsController < ApplicationController
	# defines routes for error handling- over rides automatic 404
  def not_found
    render(:status => 404)
  end

  def internal_server_error
    render(:status => 500)
  end
end
