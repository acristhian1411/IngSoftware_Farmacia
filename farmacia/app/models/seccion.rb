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
>>>>>>> 9c3155f558778d8f22f4c9138a5d8f8674d4400f
end
