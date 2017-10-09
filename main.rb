require_relative 'student_error'
require_relative 'car'
require_relative 'student'

jordan = Student.new("Jordan")
p "THis is Jordan the student #{jordan}."
p "Here is his descriptoin #{jordan.description}"
p "Does he have a car?? #{Student.has_car?}"
jordan.student_age(28)