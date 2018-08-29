class Proveedor < ActiveRecord::Base
	has_many :producto
	validates :ruc, numericality: { only_integer: true } , presence: true
	validates :razon_social,  presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true

<<<<<<< HEAD
=======
 
>>>>>>> d3a8bae8040f06b4ccf5a62685718bbd876cedd4
	has_paper_trail(
	    meta: {
	      user_id: :user_id, # model attribute
	       }
	  )

	
end
