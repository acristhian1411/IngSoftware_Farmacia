class TipoMed < ActiveRecord::Base
	validates :tipo_descrip, presence: true
	
	has_many :producto
	has_paper_trail(
    meta: {
      author_id: :author_id, # model attribute
       }
  )

end
