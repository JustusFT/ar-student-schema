require 'csv'
require_relative '../app/models/student.rb'
require_relative '../app/models/teacher.rb'

# p Student.where("teacher_id = 1")

students_arr = []

CSV.foreach("../db/data/students.csv") do |row|
  students_arr << row
end

#separate headers from students
students_arr.shift

# p $headers
# p $students

# move to db
students_arr.each do |x|
  # p x
  student = Student.new
  student.assign_attributes(
    :first_name => x[0],
    :last_name => x[1],
    :gender => x[2],
    :birthday => Date.parse(x[3]),
    :email => x[4],
    :phone => x[5]
    # :teacher_id => Teacher.order("RANDOM()").first.id
  )
  student.save
  # p student.age
end
