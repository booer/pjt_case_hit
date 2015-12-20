class Admin::ProductsController < Admin::BaseController
	def index
		@products = Product.all		
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to amdin_product_path
		else
			render :new
		end
	end
	def show
		@product = Product.find(params[:id])
	end
	def destroy
		@product = Product.find(params[:id])
	end
	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to amdin_product_path
		else
			render :edit
		end
	end
	
	private
	def product_params
		require(:prodcut)
	end
end	