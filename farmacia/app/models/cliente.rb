class Cliente < ActiveRecord::Base
	has_many :sale
	validates :nombre, :apellido, :ruc, :direccion, :telefono,  presence: true 

	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )

end
