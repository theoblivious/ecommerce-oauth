class ProductsController < ApplicationController
   before_action :find_product, only: [:show]

  def show

	
  end

private
  def find_product
	@product = Product.find(params[:id])
	# binding.pry
	
  end

end