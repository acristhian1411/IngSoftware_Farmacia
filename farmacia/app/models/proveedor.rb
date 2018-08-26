class Proveedor < ActiveRecord::Base
	has_many :producto
	validates :ruc, numericality: { only_integer: true } , presence: true
	validates :razon_social,  presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

<<<<<<< HEAD
	has_paper_trail(
    meta: {
      author_id: :author_id, # model attribute
       }
  )
=======
	has_paper_trail
>>>>>>> b10e0dba254b1eb3a20f715b9eb9088d3ad2ecf0

	
end
