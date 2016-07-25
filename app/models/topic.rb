class Topic < ActiveRecord::Base
<<<<<<< HEAD
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
=======
  has_many :posts
>>>>>>> checkpoint34-A
end
