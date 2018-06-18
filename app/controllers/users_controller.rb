class UsersController < ApplicationController
<<<<<<< HEAD
	def index
=======

	def index 
>>>>>>> upstream1/master
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

<<<<<<< HEAD

=======
>>>>>>> upstream1/master
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
<<<<<<< HEAD
		if (@user.save)
			redirect_to @user
		else 
			render :new
		end

	end

	def update #todo
		@user = User.find(params[:id])
		if (@user.update(user_params))
			redirect_to @user
		else
			render :edit
		end

	end

	def destroy #todo
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	def edit #todo
		@user = User.find(params[:id])
	end

	private def user_params
		params.require(:user).permit(:username, :email, :password, :avatar)
	end
=======
		if @user.save
			redirect_to @user
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :avatar)
	end

>>>>>>> upstream1/master
end
