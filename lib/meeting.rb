class Meeting < ActiveRecord::Base
  belongs_to :student
  belongs_to :instructor 
end
