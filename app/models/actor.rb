class Actor < ApplicationRecord

  has many :movie_actors
  has many :movies, through: :movie_actors
 

end
