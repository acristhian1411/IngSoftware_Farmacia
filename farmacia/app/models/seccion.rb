class Seccion < ActiveRecord::Base
	validates :sec_descrip, presence: true
	
	has_many :producto
end
