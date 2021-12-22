require 'json'
def store_people(people)
  File.write('people.json', JSON.pretty_generate(people), mode: 'w')
end
