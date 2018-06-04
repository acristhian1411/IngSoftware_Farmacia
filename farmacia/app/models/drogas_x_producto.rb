class DrogasXProducto < ActiveRecord::Base
  belongs_to :droga
  belongs_to :producto
end
