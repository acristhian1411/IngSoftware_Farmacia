class Producto < ActiveRecord::Base
 
  belongs_to :marca
  belongs_to :proveedor
  belongs_to :seccion
  belongs_to :tipo_med

<<<<<<< HEAD
=======

>>>>>>> a3e53cc6430ea474f8044f00a24d4d92747e5e46
  has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )
<<<<<<< HEAD
=======

 
>>>>>>> a3e53cc6430ea474f8044f00a24d4d92747e5e46

end
