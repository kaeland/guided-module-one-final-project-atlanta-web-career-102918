class Instructor < ActiveRecord::Base
  has_many :meetings
  has_many :students, through: :meetings 

end
