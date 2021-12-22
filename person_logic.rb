require './student_logic'
require './teacher_logic'

class AddPerson
  def add_person
    puts 'Do you want to create a student (1) or a teacher (2)'
    number = gets.chomp
    case number
    when '1'
      student = GetStudent.new.student
      AddStudent.new.add_student(student)
    when '2'
      teacher = GetTeacher.new.teacher
      AddTeacher.new.add_teacher(teacher)
    end
  end
end

class ListPeople
  def self.list_all_people(people)
    people.each_with_index do |p, i|
      if p.is_a?(Student)
        puts "#{i + 1}- [Student] Name : #{p.name} , Age : #{p.age}, Id: #{p.id} "
      else
        puts "#{i + 1}- [Teacher] Name : #{p.name} , Age : #{p.age}, Id: #{p.id}"
      end
    end
  end
end
