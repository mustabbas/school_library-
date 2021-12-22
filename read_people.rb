require './student'
require './teacher'
require 'json'

def read_people(people)
  file = File.read('./people.json')
  hash_data_people = JSON.parse(file)
  hash_data_people.each do |hash|
    people << if hash['classroom']
                Student.new(hash['age'], hash['classroom'], hash['name'])
              else
                Teacher.new(hash['age'], hash['specialization'], hash['name'])
              end
  end
end
