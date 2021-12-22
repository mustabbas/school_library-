require 'json'
def store_rentals(rentals)
  File.write('rentals.json', JSON.pretty_generate(rentals), mode: 'w')
end
