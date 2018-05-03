class Proveedor < ActiveRecord::Base
	validates :ruc, numericality: { only_integer: true } , presence: true
	validates :razon_social,  presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

end
