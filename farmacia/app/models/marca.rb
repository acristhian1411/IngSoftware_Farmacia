class Marca < ActiveRecord::Base
	validates :marca_descrip, presence: true
end
