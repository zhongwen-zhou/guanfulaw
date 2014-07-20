class NewsController < ApplicationController
	def index
		news_column = Column.where(:name => '动态').first
		@newes = Article.where(:column_id => news_column.id).desc(:created_at).limit(5)
	end

	def show
		@news = Article.find(params[:id])
	end
end
