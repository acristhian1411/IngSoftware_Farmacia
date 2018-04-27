class Seccion < ActiveRecord::Base
	validates :sec_descrip, presence: true
end
