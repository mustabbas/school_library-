require './book'
require 'json'
def read_books(books)
  file = File.read('./books.json')
  hash_data_books = JSON.parse(file)
  hash_data_books.each do |hash|
    books << Book.new(hash['title'], hash['author'])
  end
end