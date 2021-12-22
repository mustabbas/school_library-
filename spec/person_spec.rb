require './person'

describe Person do
  context 'Creating an instance of a Person' do
    it 'should create a new instace of a Person with an age' do
      age = 20
      person = Person.new(age, 'Peter')
      expect(person.age).to eq(20)
    end
    it 'should create a new instance of a Person with a name' do
      name = 'Peter'
      person = Person.new(20, name)
      expect(person.name).to eq('Peter')
    end
    it 'should create a new instance of a Person who has a parent permission' do
      name = 'Peter'
      age = 20

      person = Person.new(age, name)
      person.parent_permission = true
      expect(person.parent_permission).to eq(true)
    end
    it 'should check if person can use services' do
      person = Person.new(20, 'Peter')
      person.parent_permission = true
      expect(person.can_use_services?).to eq(true)
    end
    it 'should check if cannot use service' do
      person = Person.new(16, 'Peter')
      person.parent_permission = false
      expect(person.can_use_services?).to eq(false)
    end
  end
end
