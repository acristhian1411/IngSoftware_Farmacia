class Proveedor < ActiveRecord::Base
	has_many :producto
	validates :ruc, numericality: { only_integer: true } , presence: true
	validates :razon_social,  presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

<<<<<<< HEAD
=======

>>>>>>> a3e53cc6430ea474f8044f00a24d4d92747e5e46
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )

	
end
