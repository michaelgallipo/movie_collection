require 'unirest'

# puts "Enter Movie Title"
# title = gets.chomp
# puts "Enter Genre"
# genre = gets.chomp
# puts "Enter Year"
# year = gets.chomp
# puts "Enter art_url"
# art_url = gets.chomp

# params = {
#   title: title,
#   genre: genre,
#   year: year,
#   art_url: art_url
# }

# response = Unirest.post("http://localhost:3000/api/movies", parameters: params).body

# puts JSON.pretty_generate(response)


# response = Unirest.patch("http://localhost:3000/api/movies/3", parameters: {title:"test"}).body

# puts JSON.pretty_generate(response)


response = Unirest.delete("http://localhost:3000/api/movies/4")

puts response