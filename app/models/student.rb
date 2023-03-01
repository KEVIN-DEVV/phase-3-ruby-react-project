
class Student < ActiveRecord::Base
  has_many :courses, dependent: :destroy
  has_many :lecturers, through: :courses
end
