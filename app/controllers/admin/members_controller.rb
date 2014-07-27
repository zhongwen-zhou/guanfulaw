module Admin
	class MembersController < BaseController
		def index
			@members = Member.all
		end

		def new
			@member = Member.new
		end

		def create
			@member = Member.create!(params.require(:member).permit(:title, :name, :position, :level, :avatar, :avatar_cache))
			redirect_to admin_members_path
		end

		def edit
			@member = Member.find(params[:id])
		end

		def update
			@member = Member.find(params[:id])
			@member.update_attributes(params.require(:member).permit(:title, :name, :position, :level, :avatar, :avatar_cache))
			redirect_to admin_members_path
		end

		def destroy
			@member = Member.find(params[:id])
			@member.destroy
			redirect_to admin_members_path
		end
	end
end
