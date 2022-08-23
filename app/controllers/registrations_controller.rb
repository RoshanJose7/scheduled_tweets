class RegistrationsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		# params -> has data from forms and route parameters
		@user = User.new(user_params)

		if @user.save
			# setting up cookies for login
			session[:user_id] = @user.id
			redirect_to root_path, notice: "Successfullt created account!"
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
