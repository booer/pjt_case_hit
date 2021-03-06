class Admin::ProductsController < Admin::BaseController
	def index
		@products = Product.all
	end
	def new
		@product = Product.new
		@product.finalimgs.build
	end
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to admin_products_path
		else
			render :new
		end
	end
	def show
		@product = Product.find(params[:id])
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to admin_products_path
	end
	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to admin_products_path
		else
			render :edit
		end
	end
	
	private
	def product_params
		params.require(:product).permit(:pname, :desc, :feature, :detail, :imagea, :imageb, :imagec, :imaged, finalimgs_attributes: [:id, :imga, :imgb, :imgc, :imgd])
	end
end	