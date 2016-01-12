class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@relation_pdt = @product.finalimgs.find(params[:id])
	end

end