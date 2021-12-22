require './student'
require './person'
require './classroom'


describe Student do
  context 'Creating an instance of Student' do
    it 'should create an instance of student that inherits from Person' do
        expect(Student.superclass).to eq(Person) 
    end
    it 'should create a new instace of a Student with an age' do
        classroom = Classroom.new('maths')
        age = 19
        student = Student.new(age, classroom, 'Rami')
        expect(student.age).to eq(19)
      end
      it 'should create a new instance of a Student with a name' do
        classroom = Classroom.new('maths')
        name = 'Rami'
        student = Student.new(19, classroom, name)
        expect(student.name).to eq('Rami')
      end
      it 'should create a new instance of a Student with a name, age and classroom' do
        classroom = Classroom.new('maths')
        name = 'Rami'
        age = 19
        student = Student.new(age, classroom, name)
        expect(student.name).to eq('Rami')
        expect(student.age).to eq(19)
        expect(student.classroom.label).to eq(classroom.label)
      end
      it 'the student should play hooky' do
        student = Student.new(19,'Rami')
        expect(student.play_hooky).to eq("¯\(ツ)/¯")
      end
  end
end
