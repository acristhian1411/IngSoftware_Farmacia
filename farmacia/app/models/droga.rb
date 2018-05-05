class Droga < ActiveRecord::Base
	has_and_belongs_to_many :producto
	validates :droga_descrip,  presence: true 
end
