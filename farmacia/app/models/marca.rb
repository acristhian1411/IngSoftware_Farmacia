class Marca < ActiveRecord::Base
	validates :marca_descrip, presence: true
	
<<<<<<< HEAD

	has_many :producto
	
=======

	has_many :producto

>>>>>>> d3a8bae8040f06b4ccf5a62685718bbd876cedd4
	has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )

end
