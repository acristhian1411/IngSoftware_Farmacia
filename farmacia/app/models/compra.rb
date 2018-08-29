class Compra < ActiveRecord::Base
	has_many :compra_detalles, inverse_of: :compras, dependent: :destroy
	has_many :productos, through: :compra_detalles
	belongs_to :user
	belongs_to :proveedor
	

	has_paper_trail(
	    meta: {
	      user_id: :user_id, # model attribute
	       }
  	)
	
	validates :number, presence: true
	validates :date, presence: true


	accepts_nested_attributes_for :compra_detalles, reject_if: :compra_detalles_rejectable?,
									allow_destroy: true

	enum state: [:draft, :confirmed]

	def total
		details = self.compra_detalles

		total = 0.0
		details.flat_map do |d|
			total += d.cantidad * d.precio
		end
		total
	end

	private

		def sale_detail_rejectable?(att)
			att[:producto_id].blank? || att[:cantidad].blank? || att[:precio].blank? || att[:cantidad].to_f <= 0 || att[:precio].to_f <= 0
		end
end

