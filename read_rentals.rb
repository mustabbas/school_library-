require './rental'
require 'json'

def read_rentals(rentals)
  file = File.read('./rentals.json')
  hash_data_rentals = JSON.parse(file)
  hash_data_rentals.each do |hash|
    rentals << Rental.new(hash['date'], Person.new(hash['person']['age'], hash['person']['name']),
                          Book.new(hash['book']['title'], hash['book']['author']))
  end
end
