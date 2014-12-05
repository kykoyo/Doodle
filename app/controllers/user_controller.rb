class UserController < ApplicationController
	before_action :find_params, only[:show, :edit, :update]

	def find_params
		@user =User.find(params[:id])
	end

	def index
		@users=User.all
	end

	def show
	end

	def new
		@user=User.new
	end
	
	def create
		@user=User.new(user_params)
	end
	
	def edit
		@user=User.find(params[:id])
	end

	def update
		@user.update(user_params)
	end

	def destroy
		@user.destroy
		redrect_to projects_path
	end



end
