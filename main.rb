require './rental_logic'
require './book_logic'
require './student_logic'
require './teacher_logic'
require './person_logic'
require './store_data'

def choose_list
  puts 'Please choose on option by enterin a number',
       '1- List all books',
       '2- List all people',
       '3- Create a person',
       '4- Create a book',
       '5- Create a rental',
       '6- List all persons for a given person id',
       '7- Exit'
  gets.chomp
end

def condition(num, people, books, rentals)
  case num
  when '1'
    list_all_books(books)
  when '2'
    ListPeople.new.list_all_people(people)
  when '3'
    person = AddPerson.new.add_person
    people << person
  when '4'
    book = AddBook.new.add_book
    books << book
  when '5'
    rental = AddRental.new.add_rental(people, books)
    rentals << rental
  when '6'
    list_rental_for_person_id(rentals)
  end
end

def check(num)
  people = []
  books = []
  rentals = []
  while num != '7'
    condition(num, people, books, rentals)
    num = choose_list
  end
  store_data(people, books, rentals)
end

def main
  puts 'Welcome Shool Library App!'
  num = choose_list
  check(num)
end

main
