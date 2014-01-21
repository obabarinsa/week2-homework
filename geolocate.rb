#Omobola Babarinsa

require 'open-uri'
require 'json'



puts "Enter an address, city or zipcode:"
locate = gets

locate = locate.chomp

#http://stackoverflow.com/questions/13146774/add-plus-before-first-symbol-in-word-in-string-and-after-last

locate = locate.split.map {|word|word + "+"}.join("")


json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{locate},&sensor=true").read

data = JSON.parse(json_data)

out = data["results"][0]["geometry"]

print = out["location"].map{ |word| word}

n1= print[0][1].to_s
n2 = print[1][1].to_s

w1=  "Latitude: "
w2 = "Longitude: "
puts w1 + n1
puts w2 + n2



