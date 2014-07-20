module Admin
	class MembersController < BaseController
		def index
			@members = Member.all
		end

		def new
			@member = Member.new
		end

		def create
			@member = Member.create!(params.require(:member).permit(:title, :name, :position, :avatar, :avatar_cache))
			redirect_to admin_members_path
		end

		def edit
			@column = Column.find(params[:column_id])
			@member = Member.find(params[:id])
		end

		def update
			@column = Column.find(params[:id])
			@column.update_attributes(params.require(:column).permit(:name, :index, :level, :column_id, :html_content))
			redirect_to admin_columns_path
		end

		def destroy
			@column = Column.find(params[:id])
			@column.destroy
		end
	end
end
