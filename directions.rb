require 'open-uri'
require 'json'


puts "Enter an origin address:"
locate = gets
locate = locate.chomp
locate = locate.split.map {|word|word + "+"}.join("")

puts "Enter a destination address:"
place = gets
place = place.chomp
place= place.split.map{|e| e + "+"}.join("")


json_data = open("http://maps.googleapis.com/maps/api/directions/json?origin=#{locate}&destination=#{place}&sensor=false").read

data = JSON.parse(json_data)


being = data["routes"][0]["legs"][0]["duration"]
out = data["routes"][0]["legs"][0]["distance"]


# puts out
# puts being 

p1 = being.map{|mes| mes}
p2 = out.map{|text| text}

n1= p1[0][1].to_s
n2 = p2[0][1].to_s

w1=  "Total travel time driving: "
w2 = "Total distance traveled: "
puts w1 + n1
puts w2 + n2





