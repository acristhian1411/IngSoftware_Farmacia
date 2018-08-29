class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_paper_trail(
	    meta: {
	      user_id: :user_id, # model attribute
	       }
	  )

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
