class WelcomeController < ApplicationController
	def index
		news_column = Column.where(:name => '动态').first
		@newes = Article.where(:column_id => news_column.id).desc(:created_at).limit(5)

		cases_column = Column.where(:name => '案例').first
		@cases = Article.where(:column_id => cases_column.id).desc(:created_at).limit(5)

		@path_action = 'root'
	end

	def about
		@path_action = 'about'
	end

	def team
		@path_action = 'team'
	end

	def service
		@path_action = 'service'
	end

	def classiccase
		@path_action = 'cases'
	end

	def contact
		@path_action = 'contact'
	end

	def dynamic
	end
end
