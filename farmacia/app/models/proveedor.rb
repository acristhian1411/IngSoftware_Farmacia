class Proveedor < ActiveRecord::Base
	has_many :producto
	validates :ruc, numericality: { only_integer: true } , presence: true
	validates :razon_social,  presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

<<<<<<< HEAD

=======
>>>>>>> 9c3155f558778d8f22f4c9138a5d8f8674d4400f
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )

	
end
