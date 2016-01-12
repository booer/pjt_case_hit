class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@relation_pdt = @product.finalimgs.find_by(product_id: params[:id])
	end

end