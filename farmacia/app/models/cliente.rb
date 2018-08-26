class Cliente < ActiveRecord::Base
	validates :nombre, :apellido, :ruc, :direccion, :telefono,  presence: true 
	has_paper_trail (
    meta: {
      author_id: :author_id, # model attribute
       }
  )
end
