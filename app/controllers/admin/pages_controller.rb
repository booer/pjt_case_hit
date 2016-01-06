class Admin::PagesController < ApplicationController
	respond_to :js
	layout 'admin'
	# before_action :is_admin?, only: [:about, :wellcome]
	def edit
		@page = Page.find(params[:id])
	end
	def update
		@page = Page.find(params[:id])
		if @page.update(page_params)
			redirect_to edit_admin_page_path('1') 
		else
			render :edit
		end
	end

	private
	def page_params
		params.require(:page).permit(:about_cn, :about_en)
	end
end