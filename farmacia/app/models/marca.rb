class Marca < ActiveRecord::Base
	validates :marca_descrip, presence: true
	
	has_many :producto
end
