class CasesController < ApplicationController
	def index
		cases_column = Column.where(:name => '案例').first
		@cases = Article.where(:column_id => cases_column.id).desc(:created_at).limit(5)
		@path_action = 'cases'
	end

	def show
		@case = Article.find(params[:id])
	end
end
