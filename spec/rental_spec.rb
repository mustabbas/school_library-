require './rental'
require './person'
require './book'

describe Rental do
  context 'Creating a new instance of rental' do
    it 'should create a new rental passing a date' do
      date = '2020/05/05'
      person = Person.new(42, 'Mark')
      book = Book.new('Lord of Rings', 'Tolkien')
      rental = Rental.new(date, person, book)
      expect(rental.date).to eq('2020/05/05')
      expect(rental.person).to eq(person)
      expect(rental.book.title).to eq(book.title)
    end
    it 'should create an instance of rental inside person rentals array' do
      person = Person.new(42, 'Mark')
      book = Book.new('Lord of Rings', 'Tolkien')
      rental = Rental.new('2020/05/05', person, book)
      expect(person.rental).to eq([rental])
    end
    it 'should create an instance of rental inside book rentals array' do
      person = Person.new(42, 'Mark')
      book = Book.new('Lord of Rings', 'Tolkien')
      rental = Rental.new('2020/05/05', person, book)
      expect(book.rental).to eq([rental])
    end
  end
end
