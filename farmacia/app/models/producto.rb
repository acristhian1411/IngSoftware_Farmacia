class Producto < ActiveRecord::Base
  has_and_belongs_to_many :droga	
  
  belongs_to :marca
  belongs_to :proveedor
  belongs_to :seccion
  belongs_to :tipo_med
end
