
class Course < ActiveRecord::Base
    belongs_to :student
    belongs_to :lecturer
end
