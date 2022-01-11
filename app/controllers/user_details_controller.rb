class UserDetailsController < ApplicationController

	def index
		@user = UserDetail.all
	end
	def show
		@user = UserDetail.find(params[:id])
	end

	def edit
		@user = UserDetail.find(params[:id])

		render :edit
	end

	def update
		@user = UserDetail.find(params[:id])
		if @user.update(user_params)

		redirect_to root_path, notice: 'User updated succesfully.'
	else
		render :edit
	end
	end
	def destroy
		@user = UserDetail.find(params[:id])
		@user.destroy

		redirect_to root_path(@user), notice: 'User deleted succesfully.'
	end


	def new
		@user = UserDetail.new
	end
	def create
		@user = UserDetail.new(user_params)
		if @user.save
			 redirect_to root_path(@user), notice: 'User created succesfully.'
			
		end
	end

	private 

	def user_params
		params.require(:user_detail).permit(:first_name, :last_name, :phone_no,:email, :alt_email, :alt_phone_no, :profile_bio, :address, :password, :pan_no, :aadhar_no, :user_type)
	end
end
