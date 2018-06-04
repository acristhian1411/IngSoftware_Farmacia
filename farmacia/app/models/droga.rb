class Droga < ActiveRecord::Base
has_many :drogas_x_producto
has_many :producto, through: :drogas_x_producto
	
	validates :droga_descrip,  presence: true 
end
