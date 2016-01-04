class Admin::CategoryController < ApplicationController
	def index
		@post_categorys = PostCategory.all
		@post_category = PostCategory.new
	end
	def new
		@post_category = PostCategory.new
	end
	def create

	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end
end