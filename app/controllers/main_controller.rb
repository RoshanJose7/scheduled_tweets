class MainController < ApplicationController
	def index
		if session[:user_id]
			@user = User.find_by(id: session[:user_id])
			flash.now[:notice] = "Logged in Successfully!"
		else
			flash.now[:alert] = "Not Logged in!"
		end
	end
end
