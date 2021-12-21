require './student'

class GetStudent
  def student
    puts 'Name'
    name = gets.chomp
    puts 'Age'
    age = gets.chomp
    puts 'Has parent permission (Y/N)'
    has_permission = gets.chomp
    has_permission = has_permission == 'y'
    [name, age, has_permission]
  end
end

class AddStudent
  def add_student(student)
    student = Student.new(student[1], '', student[0], parent_permission: student[2])
    puts 'Student created successfully'
    student
  end
end
