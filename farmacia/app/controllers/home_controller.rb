class HomeController < ApplicationController
	before_action :authenticate_user!
	
  def index
  	@productos = Producto.where("prod_active != ?", false)
  end
end
