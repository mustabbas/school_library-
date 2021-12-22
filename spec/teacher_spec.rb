require './teacher'
require './person'
describe Teacher do
  context 'Creating an instance of a Teacher' do
    it 'should create an instance of Teacher that inherits from Person' do
      expect(Teacher.superclass).to eq(Person)
    end
    it 'should create a new instace of a Teacher with a specialization' do
      specialization = 'React'
      teacher = Teacher.new(30, specialization)
      expect(teacher.specialization).to eq('React')
    end
  end
end
