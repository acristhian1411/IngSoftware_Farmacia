class Sale < ActiveRecord::Base
	has_many :sale_details, inverse_of: :sale, dependent: :destroy
	has_many :productos, through: :sale_details
	belongs_to :user

	has_paper_trail
	
	validates :number, presence: true
	validates :date, presence: true


	accepts_nested_attributes_for :sale_details, reject_if: :sale_detail_rejectable?,
									allow_destroy: true

	enum state: [:draft, :confirmed]

	def total
		details = self.sale_details

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
