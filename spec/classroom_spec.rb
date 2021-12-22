require './classroom'

describe Classroom do
  context 'Creating an instance of a Classroom' do
    it 'should create a new instace of a Classroom with an label' do
      label = 'math'
      classroom = Classroom.new(label)
      expect(classroom.label).to eq('math')
    end
  end
end
