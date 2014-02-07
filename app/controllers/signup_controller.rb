class SignupController < ApplicationController
	def index
		@user = User.new
		respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes }
    end
	end
	def create
		@user = User.new(signup_params)
		# @user.user_portal_roles.role = 'owner' 
		respond_to do |format|
			if @user.save
				format.html { redirect_to signup_path, notice: 'signup success' }
			else
        format.html { redirect_to signup_path, notice: 'bad password' }
      end
		end
	end

	private

	def signup_params
		params[:user].permit(:email, :password, user_portal_roles_attributes: [:role => 'owner']  )
		
	end
end
