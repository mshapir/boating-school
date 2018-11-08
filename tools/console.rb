require_relative '../config/environment'
# require_relative  '../app/models/student.rb'
# require_relative  '../app/models/boating_test.rb'
# require_relative  '../app/models/instructor.rb'

# Declare your variables here~~~
instructor1 = Instructor.new("Kevin")
instructor2 = Instructor.new("Tony")
instructor3 = Instructor.new("Eric")
student1 = Student.new("Manny", "Shapir")
student2 = Student.new("Jack", "Daniels")
student3 = Student.new("John", "Chase")
test1 = BoatingTest.new(student1, "boating", "passed", instructor1)
test2 = BoatingTest.new(student2, "boating", "failed", instructor2)
test3 = BoatingTest.new(student3, "boating", "passed", instructor3)
# don't remove!
binding.pry
0
