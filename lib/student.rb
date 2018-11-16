class Student < ActiveRecord::Base
  has_many :meetings
  has_many :instructors, through: :meetings 
end
