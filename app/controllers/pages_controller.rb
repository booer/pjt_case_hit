class PagesController < ApplicationController
	# get /index
	def index
		@aimgs = AboutImage.all
		@posts = Post.all
	end
	# get /about
	def about
		@page = Page.find(1)
		@aimgs = AboutImage.all
	end
	def contact
		
	end
	
	def history

	end

end