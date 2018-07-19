class Producto < ActiveRecord::Base
 
  belongs_to :marca
  belongs_to :proveedor
  belongs_to :seccion
  belongs_to :tipo_med

end
