class CompraDetalle < ActiveRecord::Base
	belongs_to :compras
	belongs_to :productos

	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )
	
	validates :producto_id, presence: true
	validates :cantidad, presence: true
	validates :precio, presence: true

	accepts_nested_attributes_for :productos


	def subtotal
		self.cantidad ? cantidad * unit_price : 0
	end

	def unit_price
		if persisted?
			precio
		else
			producto ? producto.precio_venta : 0
		end
	end
end
