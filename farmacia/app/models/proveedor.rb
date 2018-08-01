class Proveedor < ActiveRecord::Base
	has_many :producto
	validates :ruc, numericality: { only_integer: true } , presence: true
	validates :razon_social,  presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

	has_paper_trail

	
end
