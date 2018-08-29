class TipoMed < ActiveRecord::Base
	validates :tipo_descrip, presence: true
	
	has_many :producto
<<<<<<< HEAD

=======
>>>>>>> 9c3155f558778d8f22f4c9138a5d8f8674d4400f
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )
<<<<<<< HEAD


=======
>>>>>>> 9c3155f558778d8f22f4c9138a5d8f8674d4400f
end
