module Admin
	class ColumnsController < BaseController
		def index
			@columns = Column.all
		end

		def new
			@column = Column.new
		end

		def create
			@column = Column.create(params.require(:column).permit(:name, :index, :level, :column_id, :html_content))
			redirect_to admin_columns_path
		end

		def edit
			@column = Column.find(params[:id])
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
