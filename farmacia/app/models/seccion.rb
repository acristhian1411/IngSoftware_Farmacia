class Seccion < ActiveRecord::Base
	validates :sec_descrip, presence: true
	
	has_many :producto

	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )


end
