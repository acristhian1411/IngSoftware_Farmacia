class HomeController < ApplicationController
  def index
  	@productos = Producto.where("prod_active != ?", false)
  end
end
