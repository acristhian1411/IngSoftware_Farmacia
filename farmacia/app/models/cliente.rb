class Cliente < ActiveRecord::Base
	validates :nombre, :apellido, :ruc, :direccion, :telefono,  presence: true 
<<<<<<< HEAD
	has_paper_trail (
    meta: {
      author_id: :author_id, # model attribute
       }
  )
=======
	has_paper_trail 
>>>>>>> b10e0dba254b1eb3a20f715b9eb9088d3ad2ecf0
end
