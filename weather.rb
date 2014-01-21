#Omobola Babarinsa

require 'open-uri'
require 'json'


puts "Please enter an address:"
locate = gets
locate = locate.chomp
locate = locate.split.map {|word|word + "+"}.join("")



json_data = open("http://api.openweathermap.org/data/2.5/weather?q=#{locate}").read

data = JSON.parse(json_data)


out = data["main"]

print = out["temp"]

constant = 273.15

temp0= print -constant
temp1 = ((temp0* 9)/5) + 32
puts temp1.round(2).to_s + "f"




