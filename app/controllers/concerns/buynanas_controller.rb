class BuynanasController < ApplicationController
  def show
  	@products = Product.all
  end

end