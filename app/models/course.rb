require 'active_record'

class Course < ActiveRecord::Base
  attr_accessor :name, :code
    belongs_to :students
    belongs_to :lecturers
end
