class PagesController < ApplicationController
	def about
		@page = Page.find(1)
		@aimgs = AboutImage.all
	end
	def wellcome
		
	end
	def contact
		
	end
	def index

	end
	
	def history

	end

end