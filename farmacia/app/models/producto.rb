class Producto < ActiveRecord::Base
  has_many :drogas_x_producto
  has_many :droga, through: :drogas_x_producto
  
  belongs_to :marca
  belongs_to :proveedor
  belongs_to :seccion
  belongs_to :tipo_med
end
