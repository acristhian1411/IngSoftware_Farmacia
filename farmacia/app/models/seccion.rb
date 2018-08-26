class Seccion < ActiveRecord::Base
	validates :sec_descrip, presence: true
	
	has_many :producto
<<<<<<< HEAD
	has_paper_trail(
    meta: {
      author_id: :author_id, # model attribute
       }
  )
=======

	has_paper_trail
>>>>>>> b10e0dba254b1eb3a20f715b9eb9088d3ad2ecf0

end
