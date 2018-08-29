class Producto < ActiveRecord::Base
 
  belongs_to :marca
  belongs_to :proveedor
  belongs_to :seccion
  belongs_to :tipo_med

<<<<<<< HEAD
=======

>>>>>>> d3a8bae8040f06b4ccf5a62685718bbd876cedd4
  has_paper_trail(
    meta: {
      user_id: :user_id, # model attribute
       }
  )
<<<<<<< HEAD
=======

>>>>>>> d3a8bae8040f06b4ccf5a62685718bbd876cedd4
end
