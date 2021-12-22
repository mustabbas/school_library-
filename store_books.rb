require 'json'
def store_books(books)
  File.write('books.json', JSON.pretty_generate(books), mode: 'w')
end