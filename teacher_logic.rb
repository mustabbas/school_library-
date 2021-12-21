require './teacher'

class GetTeacher
  def teacher
    puts 'Name'
    name = gets.chomp
    puts 'Age'
    age = gets.chomp
    puts 'Specialization'
    specialization = gets.chomp
    [name, age, specialization]
  end
end

class AddTeacher
  def add_teacher(teacher)
    teacher = Teacher.new(teacher[1], teacher[2], teacher[0], parent_permission: nil)
    puts 'Teacher created successfully'
    teacher
  end
end
