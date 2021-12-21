require './book'

class AddBook
  def add_book
    puts 'Title: '
    title = gets.chomp
    puts 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    puts 'Book created successfully!'
    book
  end
end

def list_all_books(books)
  books.each_with_index do |b, i|
    puts "#{i + 1}- Title : #{b.title} , Author : #{b.author}"
  end
end
