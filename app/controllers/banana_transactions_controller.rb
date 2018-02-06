class BananaTransactionsController < ApplicationController
	def create
		banana = Banana.new
		banana.user_id = session[:user_id]
		banana.project_id = params[:project_id]
		banana.save
		redirect_to "/projects/#{stories.project_id}"
	end
end
