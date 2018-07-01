class HomeController < ApplicationController
  def index
  	@productos = Producto.where("fecha_vence >= ?", Date.today)
  end
end
