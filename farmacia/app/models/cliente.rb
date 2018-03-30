class Cliente < ActiveRecord::Base
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :ruc, presence: true
end
