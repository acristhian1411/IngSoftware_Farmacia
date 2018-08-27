class Seccion < ActiveRecord::Base
	validates :sec_descrip, presence: true
	
	has_many :producto

	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )
<<<<<<< HEAD
=======

>>>>>>> a3e53cc6430ea474f8044f00a24d4d92747e5e46

end
