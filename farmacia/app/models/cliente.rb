class Cliente < ActiveRecord::Base
	validates :nombre, :apellido, :ruc, :direccion, :telefono,  presence: true 
end
