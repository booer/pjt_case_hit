class Admin::SitesController < Admin::BaseController

	def show
		@site = Site.find(params[:id])
	end
	def edit
		@site = Site.find(params[:id])
	end
	def update
		@site = Site.find(params[:id])
		if @site.update(site_params)
			redirect_to admin_posts_path
		else
			render :new
		end
	end
	
	private
	def site_params
		params.require(:site).permit(:fax, :tel, :ga, :address)
	end
end