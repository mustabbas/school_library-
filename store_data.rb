require 'json'
def store_data(people, books, rentals)
  puts people
  puts books
  puts rentals
  if File.exists?("people.json")
    File.write("people.json", JSON.generate(people), mode: "a") 
  else
    # Create the file
    File.write("people.json", JSON.generate(people), mode: "w") 
  end
end
