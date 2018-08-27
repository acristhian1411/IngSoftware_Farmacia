class Marca < ActiveRecord::Base
	validates :marca_descrip, presence: true
	
	has_many :producto
<<<<<<< HEAD
=======

>>>>>>> a3e53cc6430ea474f8044f00a24d4d92747e5e46
	
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )

end
