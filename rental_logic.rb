require './rental'

class AddRental
  def add_rental(people, books)
    puts 'Select a person from the following'
    ListPeople.new.list_all_people(people)
    p_index = gets.chomp
    puts 'Select a book from the following'
    list_all_books(books)
    b_index = gets.chomp

    puts 'Date : '
    date = gets.chomp

    rental = Rental.new(date, people[p_index.to_i - 1], books[b_index.to_i - 1])
    puts 'Rental created successfully'
    rental
  end
end

def list_rental_for_person_id(rentals)
  puts 'Rentals : '
  rentals.each_with_index do |r, _i|
    puts "Date : #{r.date} Book: #{r.book.title} By #{r.book.author} "
  end
end
