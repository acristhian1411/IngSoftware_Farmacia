class TipoMed < ActiveRecord::Base
	validates :tipo_descrip, presence: true
	
	has_many :producto
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )
end
