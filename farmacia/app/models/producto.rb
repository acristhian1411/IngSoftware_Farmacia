class Producto < ActiveRecord::Base
 
  belongs_to :marca
  belongs_to :proveedor
  belongs_to :seccion
  belongs_to :tipo_med

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
