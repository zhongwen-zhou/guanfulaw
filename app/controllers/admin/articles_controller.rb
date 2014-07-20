module Admin
	class ArticlesController < BaseController
		def index
			@column = Column.find(params[:column_id])
			@articles = Article.where(:column_id => @column.id).desc(:created_at)
		end

		def new
			@column = Column.find(params[:column_id])
			@article = Article.new
			@article.html_content = @column.html_content
		end

		def create
			@column = Column.find(params[:column_id])
			@article = Article.create!(params.require(:article).permit(:title, :author, :index, :html_content)) do |article|
				article.column_id = @column.id
			end
			redirect_to admin_column_articles_path(@column)
		end

		def edit
			@column = Column.find(params[:column_id])
			@article = Article.find(params[:id])
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
