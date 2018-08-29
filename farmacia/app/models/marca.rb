class Marca < ActiveRecord::Base
	validates :marca_descrip, presence: true
	
<<<<<<< HEAD
	has_many :producto

=======
	has_many :producto	
>>>>>>> 9c3155f558778d8f22f4c9138a5d8f8674d4400f
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )

end
