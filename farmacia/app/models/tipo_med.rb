class TipoMed < ActiveRecord::Base
	validates :tipo_descrip, presence: true
end
